DATE=
#20Sept2014
#04Sept2014
#24July14
#07Jun14
#20Dec13
#18Jan14

CV=cv_wendani
RESUME=resume_wendani

TEX=$(CV)$(DATE).tex $(RESUME)$(DATE).tex
AUX=$(TEX:.tex=.aux)
DVI=$(TEX:.tex=.dvi)
LOG=$(TEX:.tex=.log)
PS=$(TEX:.tex=.ps)
PDF=$(TEX:.tex=.pdf)

all: $(PDF)

%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips $<

%.dvi: %.tex
	latex $<

clean:
	rm -rf $(AUX) $(DVI) $(LOG) $(PS) $(PDF)

