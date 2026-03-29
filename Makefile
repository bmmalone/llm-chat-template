# Get a list of all Markdown files in the current directory
SRCS = $(wildcard *.md)

# Generate a list of corresponding PDF files by replacing the .md extension with .pdf
PDFS = $(patsubst %.md,%.pdf,$(SRCS))

# Generate a list of corresponding TEX files
TEXS = $(patsubst %.md,%.tex,$(SRCS))

# Pattern rule to create any PDF from its corresponding Markdown file
%.pdf: %.md
	pandoc -s --toc --toc-depth=3 $< -o $@   --pdf-engine=xelatex  --template=template.tex

# Pattern rule to create any tex from its corresponding Markdown file
%.tex: %.md
	pandoc -s --toc --toc-depth=3 $< -o $@ --template=template.tex --pdf-engine=xelatex

.PHONY: all
all: pdf

.PHONY: pdf
pdf: $(PDFS)

.PHONY: tex
tex: $(TEXS)

.PHONY: clean
clean:
	rm -f $(PDFS) $(TEXS)