DATE=
#20Sept2014
#04Sept2014
#24July14
#07Jun14
#20Dec13
#18Jan14


STRING=resume_Ind_nwd
TEX=$(STRING)$(DATE).tex
AUX=$(STRING)$(DATE).aux
DVI=$(STRING)$(DATE).dvi
LOG=$(STRING)$(DATE).log
PS=$(STRING)$(DATE).ps
PDF=$(STRING)$(DATE).pdf

$(PDF): $(PS)
	ps2pdf $(PS)

$(PS): $(DVI)
	dvips $(DVI)

$(DVI): $(TEX)
	latex $(TEX)


clean:
	rm -rf $(AUX) $(DVI) $(LOG) $(PS) $(PDF)

