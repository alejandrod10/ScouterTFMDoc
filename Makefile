.PHONY: clean demo latex report

TEMPLATE = templates/uoc_eisvogel_3_1.tex

FLAGS = -s --filter pandoc-include --filter pandoc-tablenos --filter pandoc-fignos --top-level-division=chapter
BIBLIO = --citeproc

all: src

all-demo: demo

clean:
	find build -type f ! -name '.gitkeep' -delete
	rm -rf .tmp

demo-tex:
	pandoc demo/index.md -o build/demo.tex --from markdown --template=$(TEMPLATE) --listings $(FLAGS) $(BIBLIO)

demo-pdf:
	pandoc demo/index.md -o build/demo.pdf --from markdown --template=$(TEMPLATE) --listings $(FLAGS) $(BIBLIO) --pdf-engine=pdflatex

demo:
	@rm -rf .tmp
	@mkdir -p .tmp/demo
	@make demo-tex
	@cp build/demo.tex .tmp/
	@cp -r demo/images .tmp/demo
	@cp -r icons/ .tmp/icons
	cd .tmp && pdflatex -interaction=nonstopmode demo.tex > /dev/null || true
	cd .tmp && pdflatex -interaction=nonstopmode demo.tex > /dev/null || true
	@cp .tmp/demo.pdf build/

src-tex:
	pandoc src/index.md -o build/src.tex --from markdown --template=$(TEMPLATE) --listings $(FLAGS) $(BIBLIO)

src-pdf:
	pandoc src/index.md -o build/src.pdf --from markdown --template=$(TEMPLATE) --listings $(FLAGS) $(BIBLIO) --pdf-engine=pdflatex

src:
	@rm -rf .tmp
	@mkdir -p .tmp/src
	@make src-tex
	@cp build/src.tex .tmp/
	@cp -r src/images .tmp/src
	@cp -r icons/ .tmp/icons
	cd .tmp && pdflatex -interaction=nonstopmode src.tex > /dev/null || true
	cd .tmp && pdflatex -interaction=nonstopmode src.tex > /dev/null || true
	@cp .tmp/src.pdf build/