.PHONY: compile
compile: main.pdf
	mv main.pdf "30_1811579 Bình_TT Anh.pdf"

.PHONY: watch
watch:
	typst watch main.typ

.PHONY: diagram
diagram:
	plantuml ./diagrams/usecase.puml -tpng -o generated/usecase
	# plantuml ./diagrams/lsp.puml -tsvg -o generated/lsp
	# plantuml ./diagrams/package.puml -tsvg -o generated/package

main.pdf:
	typst compile main.typ

.PHONY: clean
clean:
	rm -rf book/main.pdf
