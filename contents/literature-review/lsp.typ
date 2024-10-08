#import "/components/glossary.typ": gls

== Language Server Protocol (LSP)

In this section, we discuss the evolution of computer programming and the various development tools that have been used to enhance developer productivity. Among these tools, editors and #gls("ides") have become particularly prominent.

Today, developers have a vast array of #gls("ides"), text editors, and source code editors to choose from. Given the importance of editing experience and tool familiarity, users often exhibit a strong preference for specific tools and are hesitant to switch. To address this challenge, tooling vendors began to support multiple programming and configuration languages @bib-lsp.

#figure(
  image("/diagrams/generated/lsp/pre-lsp.svg", width: 80%),
  caption: [Language provider and tooling vendor relationship],
) <fig-pre-lsp>

@fig-pre-lsp illustrates the traditional relationship between language providers and tooling vendors. When a tooling vendor implements language features such as diagnostics, auto-completions, and code navigation for a specific programming language, it requires significant effort. Different tools often employ disparate #gls("apis") to support these features, necessitating the consumption of programming language #gls("apis") for semantic and syntactic information. This frequently leads to redundant code implementation.

To address this inefficiency, Microsoft introduced the #gls("lsp", mode: "full") as a standardized communication mechanism between language clients and language servers. Language servers, which provide language-specific intelligence, can be reused by multiple clients, eliminating the need for redundant implementation efforts.

#figure(
  image("/diagrams/generated/lsp/lsp.svg", width: 80%),
  caption: [Language Server Protocol],
) <fig-lsp>

@fig-lsp illustrates how a text editor, by implementing the #gls("lsp"), can support intelligent features for multiple programming languages. This capability is achieved by establishing a standardized communication channel between the editor and language-specific servers.

The following subsections will delve deeper into the intricacies of the #gls("lsp").

=== JSON-RPC

The underlying base protocol of #gls("lsp") is built upon #gls("json-rpc") version 2.0. The #gls("lsp") two main components: the header and the content. These components will be elaborated on in the subsequent subsection @bib-jsonrpc.

#gls("json-rpc") defines a set of #gls("json") data structures along with their associated rules. The specification outlines two primary data structures:

- *Request object*: A client initiates a #gls("rpc") by sending a request object to the server.
- *Response object*: The server responds to the client's #gls("rpc") call with a response object.

==== Request Object

#figure(
  ```json
  {
    "jsonrpc": "2.0",
    "method": "textDocument/completion",
    "params": {
      "textDocument": {
        "uri": "file:///Users/user/hello/test.ungram"
      },
      "position": {
        "line": 59,
        "character": 0
      },
      "context": {
        "triggerKind": 1
      }
    },
    "id": 10
  }
  ```,
  caption: [Auto-completion Request Body Sent from Client to Language Server],
) <lst-req-cmp>

@lst-req-cmp presents an example of a #gls("json-rpc") request sent from a client (editor/IDE) to a Language Server to request auto-completions at a specific position. The request object comprises the following fields:

- *jsonrpc*: Specifies the #gls("json-rpc") protocol version used for communication.
- *method*: Identifies the method to be invoked. Method names beginning with "RPC" are reserved for internal protocol methods and extensions.
- *params*: Optional parameters for the method invocation. These parameters can be named or positional.
- *id*: A unique identifier assigned by the client to correlate the request with its corresponding response. This field is optional and, if present, must be a string, number, or null.

The request object can also be defined without the `id` field, in which case it represents a notification. Unlike requests, the server MUST NOT send a response to a notification.


#figure(
  ```json
  {
    "jsonrpc": "2.0",
    "method": "textDocument/didOpen",
    "params": {
      "textDocument": {
        "uri": "file:///Users/user/hello/test.ungram",
        "languageId": "ballerina",
        "version": 1
      }
    }
  }
  ```,
  caption: [DidOpen Notification Sent from the Client to the Language Server],
) <lst-req-open>

@lst-req-open exemplifies a `textDocument/didOpen` notification sent from a client to a Language Server to inform the server about an opened document in the editor.

==== Response Object

#figure(
  ```json
  {
    "jsonrpc": "2.0",
    "method": "textDocument/hover",
    "result": {
      "contents": {
        "kind": "markdown",
        "value": "Get a string result.\n \n \n--- \n \n### Returns \nstringReturned string value"
      }
    },
    "id": 140
  }
  ```,
  caption: [Hover Response Sent from the Language Server to the Client],
) <lst-res-hover>

The response object contains the following fields.

- *jsonrpc*: This is the #gls("json-rpc") protocol version used for the communication.
- *result*: The result value is determined by the server as a response to a corresponding request method. This field MUST be included in a success scenario and MUST NOT be included in the error scenario.
- *error*: While the result field is included in the success scenario, the error field is included in the erroneous scenario. In a response object, either the result or error fields MUST include and MUST NOT include both fields in the same response.
- *id*: This is the identifier value of the response, and this should be the same as the id of the correlating request object.

#figure(
  ```json
  {
    "jsonrpc": "2.0",
    "error": {
      "code": -32601,
      "message": "Method not found",
      "data": {}
    },
    "id": "1"
  }
  ```,
  caption: [Method Not Found Error],
) <lst-res-err>

@lst-res-err is an example error response sent for a request with a method that is not supported by the client or the server. An error object contains the following fields.

- *code*: This value MUST be an integer value and represents the error type
  that occurred. We can read more on the error codes in the #gls("json-rpc")
  Specification.
- *message*: This value SHOULD be a single sentence to represent the description of the error.
- *data*: This optional field holds additional information about the error, and the value can be either primitive or structured.

==== Batch

Batches allow the clients to send multiple requests to the server. Except for the notifications, the server MUST send back response objects to each of the request objects. The order of the response objects can differ from the order of the requests, and the requests and the corresponding responses should be correlated with the `id` @bib-jsonrpc.

=== Base Protocol

The base protocol defines the header part and the content part. The header part consists of header fields, and the content part adheres to the #gls("json-rpc") format as described in the earlier section. The following is an example message sent from a client to a Language Server:

#figure(
  ```json
  Content-Length: ...\r\n
  \r\n
  {
    "jsonrpc": "2.0",
    "id": 1,
    "method": ...,
    "params": {
      ...
    }
  }
  ```,
  caption: [Example of a Base Protocol message sent from a client to a Language Server],
)

As per the example, the header part and the content part are separated by "\\r\\n". The header part and the content part have the following characteristics.

==== Header Part

- The header field and the header value are separated by ": ".
- A header field ends with a "\\r\\n".
- The #gls("lsp") supports the `Content-Length` and the `Content-Type` header fields.
==== Content Part

- This follows #gls("json-rpc") 2.0, and the `jsonrpc` field is set to 2.0 always.
- #gls("utf8", mode: "short") is the default encoding.

=== Communication Model

The #gls("lsp") is transport agnostic, allowing for communication over various protocols such as standard input/output or WebSocket. The protocol defines two primary interaction patterns: requests and notifications.

Requests are client-initiated messages that expect a corresponding response from the server. Each request is uniquely identified by an `id` property to enable correlation. Notifications, on the other hand, are one-way messages sent by either the client or the server without requiring a response @bib-lsp.

#figure(
  image("/diagrams/generated/lsp/lsp-seq-basis.svg", width: 80%),
  caption: [A sample use case of how the server initialization and handshaking are happening],
)

The initial communication between the client and server is established through the `initialize` request. The client sends an `InitializeRequest` containing essential information such as process #gls("id"), root #gls("uri"), and client capabilities. The server responds with an `InitializeResult` that acknowledges the connection and provides server capabilities. Any requests sent before the `initialize` request or notifications sent before the server's response to the `initialize` request are considered invalid and may result in errors. This initialization phase is crucial for setting up the communication channel and exchanging necessary information between the client and server.

Once the initialization sequence, consisting of the `initialize` request and its corresponding response, is complete, the client typically sends an `initialized` notification to signal readiness. Subsequently, the client informs the server about opened documents using the `textDocument/didOpen` notification. In response to this, the server might send `textDocument/publishDiagnostics` notifications to provide initial code analysis results. It's essential to note that notifications, unlike requests, do not expect a response.

The #gls("lsp") places the responsibility of managing the server's lifecycle on the client. This implies that the client is tasked with initiating the server process, handling its communication, and ultimately terminating it when necessary. This architectural decision provides clients with greater control over server resource management and allows for more flexible integration strategies.

Each message within the #gls("lsp") is identified by a unique method name, conforming to the #gls("json-rpc") protocol specification. While general messages follow standard naming conventions, most #gls("lsp") methods incorporate specific prefixes to categorize their functionality.

==== General Messages

General messages, such as `initialize`, `initialized`, and `shutdown`, are core to the #gls("lsp") lifecycle and do not require a specific namespace prefix. These fundamental methods establish the initial connection and termination of the language server.

==== Prefix "\$/"

Methods prefixed with `$/` are considered client or server specific extensions to the core LSP protocol. Examples include `$/cancelRequest` for canceling ongoing requests and `$/progress` for reporting progress updates. Implementations are not obligated to support these methods, and their usage should be carefully considered to avoid compatibility issues.

==== Prefix "window/"

Methods prefixed with `window/` are designed to interact with the client's user interface. For instance, the `showMessage` notification displays a message within the editor's UI. These methods, including `showMessage`, `showMessageRequest`, and `logMessage`, will be explored in greater detail in subsequent chapters.

==== Prefix "telemetry/"

Telemetry events, sent from the server to the client, provide insights into server-side operations. The `telemetry/event` method is used for this purpose. These events offer valuable information for monitoring, troubleshooting, and performance analysis.

==== Prefix "workspace/"

Methods prefixed with `workspace/` pertain to workspace-level operations. The `workspace/applyEdit` request, for instance, allows the server to suggest and apply changes to multiple text documents within the workspace. Conversely, the `workspace/didChangeConfiguration` notification informs the server of changes to the workspace's configuration settings. These methods, along with others like `workspace/symbol` for workspace-wide symbol search, offer powerful capabilities for managing and understanding codebases. A deeper exploration of these workspace-related methods and their usage scenarios will be provided in subsequent chapters.

==== Prefix "textDocument/"

Methods prefixed with `textDocument/` are associated with specific text documents. To identify the target document, a `uri` property is included within the method's parameters. For instance, the `textDocument/didOpen` notification provides the URI of the newly opened document. When positional information is required, such as for the `textDocument/definition` request, the `position` property within the parameters specifies the location within the document. These document-centric methods form the foundation for most language-aware features provided by language servers.

The #gls("lsp") does not enforce strict ordering for requests, responses, and notifications. While clients and servers can process messages sequentially for simplicity, concurrent handling is also permissible. The `id` property is essential for correlating requests with their corresponding responses.

To ensure correct behavior, implementations should consider the semantic dependencies between requests. For instance, a `textDocument/format` request might influence the results of a subsequent `textDocument/definition` request due to potential code changes. Therefore, careful handling of request and response ordering is crucial in certain scenarios.
