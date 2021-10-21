OBJS = $(patsubst %.odg,%.pdf,$(wildcard drawings/*.odg))
TRGT = Thesis
BIB = Thesis_bib_DB.bib

all: $(TRGT).pdf

$(TRGT).pdf: $(TRGT).tex $(OBJS) $(BIB) FORCE
	latexmk -pdf $(TRGT).tex

drawings/%.pdf: drawings/%.odg
	make -C drawings

clean:
	@rm -f $(TRGT).aux $(TRGT).log $(TRGT).dvi $(TRGT).bbl $(TRGT).blg rerun *~ *.fls *.fdb_latexmk *.log
	@rm -f $(TRGT).glo $(TRGT).ist $(TRGT).lof $(TRGT).lot $(TRGT).nlo $(TRGT).out $(TRGT).toc $(TRGT).acn
	make -C drawings clean

FORCE: 

.PHONY: clean all FORCE
