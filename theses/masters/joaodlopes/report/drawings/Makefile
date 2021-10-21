CC = soffice
CFLAGS = --headless --convert-to pdf
LO_RUNNING = $(shell pgrep soffice)
OBJS = $(patsubst %.odg,%.pdf,$(wildcard *.odg)) speedupConv.eps speedup3.eps points.eps

all: $(OBJS)
	gif2png layout.gif

ifeq ($(LO_RUNNING), )
%.pdf: %.odg
	$(CC) $(CFLAGS) $<
else 	
$(error LibreOffice is running. Close it before proceeding.)
endif

speedupConv.eps: conv_results.m
	octave $<

speedup3.eps: fft_results.m
	octave $<

points.eps: kmeans_results.m
	octave $<

clean:
	@rm -f *.pdf *~ *.eps *~ layout.png

.PHONY: clean all

