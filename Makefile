DATE=
#20Sept2014
#04Sept2014
#24July14
#07Jun14
#20Dec13
#18Jan14


STRING=resume_Ind_nwd
TEX=$(STRING)$(DATE).tex
AUX=$(TEX:.tex=.aux)
DVI=$(TEX:.tex=.dvi)
LOG=$(TEX:.tex=.log)
PS=$(TEX:.tex=.ps)
PDF=$(TEX:.tex=.pdf)

$(PDF): $(PS)
	ps2pdf $(PS)

$(PS): $(DVI)
	dvips $(DVI)

$(DVI): $(TEX)
	latex $(TEX)


clean:
	rm -rf $(AUX) $(DVI) $(LOG) $(PS) $(PDF)

