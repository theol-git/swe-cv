.PHONY: resume.pdf

CC = xelatex

OUTPUTDIR = ./output

RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(OUTPUTDIR) $<

clean:
	rm -rf $(OUTPUTDIR)/*.pdf
