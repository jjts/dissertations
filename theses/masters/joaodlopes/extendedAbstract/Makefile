OBJS = $(patsubst %.odg,%.pdf,$(wildcard drawings/*.odg))
TRGT = bare_jrnl
BIB = Thesis_bib_DB.bib

all: $(TRGT).pdf

$(TRGT).pdf: $(TRGT).tex $(OBJS) $(BIB)
	latexmk -pdf $(TRGT).tex

drawings/%.pdf: drawings/%.odg
	make -C drawings

clean:
	@rm -f $(TRGT).aux $(TRGT).log $(TRGT).dvi $(TRGT).bbl $(TRGT).blg rerun *~ *.fls *.fdb_latexmk
	make -C drawings clean

veryclean: clean
	@rm $(TRGT).pdf

.PHONY: clean all veryclean
