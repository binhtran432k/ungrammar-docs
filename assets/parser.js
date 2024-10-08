// This file was generated by lezer-generator. You probably shouldn't edit it.
import {LRParser, LocalTokenGroup} from "@lezer/lr"
import {endOfNode} from "./tokens.js"
import {ungramHighlight} from "./highlight.js"
export const parser = LRParser.deserialize({
  version: 14,
  states: "&lO]QROOQbQQOOOOQP'#Ca'#CaOgQQO'#C`OOQO'#Cx'#CxQbQQOOOlQQO,58zOOQO-E6v-E6vOwOSO'#ChO!YQQO'#CfOlQQO'#CoO!kQRO'#DTOOQP'#DT'#DTO#YQRO'#CgOOQP'#DS'#DSO#tQRO'#CeO$PQQO'#CdOOQP'#DR'#DROOQP'#Cc'#CcO$UQRO1G.fOOOO'#Cy'#CyO$ZOSO,59SOOQP,59S,59SO$lQRO'#CzOOQP,59W,59WOOQP,59Y,59YOOQP'#Cg'#CgO%WQRO,59QOOQP'#Cq'#CqO%lQRO,59ZOlQQO,59`OlQQO'#C{O%tQRO,59OOOQO7+$Q7+$QOOOO-E6w-E6wOOQP1G.n1G.nOOQP-E6x-E6xOOQP'#Cs'#CsOOQP1G.u1G.uOOQP1G.z1G.zOOQP'#Cw'#CwOOQP,59g,59gOOQP-E6y-E6y",
  stateData: "&P~OsOSPOSQOS~OqPO~OtQO~OUUO~OdYOtQOxWO~O]dO^fOydOzdO{fO~O_hOaiOdYOtQOxWO~OinO_wXawXdwXjwXqwXtwXxwXfwX~O_ZXaZXdZXjvXqvXtZXxZXfvX~OjXXquXfuX~OjoO~OqqO~O]dO^sOydOzdO{sO~O_hOaiOdnXjnXqnXtnXxnXfnX~OdYOtQOxWOjYaqYafYa~OfvOquO~OjoOqWafWa~O",
  goto: "$ZxPPPPy}P!Z!^!b!f!k!wPPP!wP!w!wP#PP#S!wPP#V#Y#`#f#lPPPPP#r#x$PTSPTSRPT]ZUXYknoRcUTaUYT`UYV^UYoUXUYoSgXkRwn][UXYknoRmYRvmRyoQTPRVTQeWRreQkXRtkQp`RzpQbURlYS_UYRxoU]UYoVjXkn",
  nodeNames: "⚠ WhitespaceR Comment Grammar Node Identifier = Rule Alternative Rule Sequence Rule Token InvalidEscape UnclosedToken ? Optional * Repetition Group ( Rule ) UnclosedGroup Label : | Rule",
  maxTerm: 43,
  propSources: [ungramHighlight],
  skippedNodes: [0,1,2],
  repeatNodeCount: 4,
  tokenData: "$h~R`XY!TYZ!T]^!Ypq!Twx!_xy!dyz!iz{!n!P!Q!s![!]#t!_!`#y!a!b$O!c!}$T#R#S$T#T#o$T#p#q$c~!YOs~~!_OP~~!dOx~~!iOd~~!nOf~~!sOa~~!vP!P!Q!y~!|XOY!yYZ#iZ]!y]^#i^;'S!y;'S;=`#n<%l~!y~O!y~~#i~#nOQ~~#qP;=`<%l!y~#yOi~~$OOU~~$TO_~~$YRt~!c!}$T#R#S$T#T#o$T~$hOj~",
  tokenizers: [endOfNode, 1, new LocalTokenGroup("!g~RTYZb]^bwxg#O#Pl~~b~gO^~~lO{~~oVOw!Uwx!Zx#O!U#O#P!Z#P;'S!U;'S;=`!`<%lO!U~!ZO]~~!`Oz~~!cP;=`<%l!U~", 68, 41)],
  topRules: {"Grammar":[0,3]},
  tokenPrec: 0
})
