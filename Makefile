LECTURE=lecture/physics_of_fluids.tex
TUTO01=tutorials/tutorial_01.tex
TUTO02=tutorials/tutorial_02.tex

all: lecture tutorials

lecture:
	latexmk -xelatex -cd $(LECTURE)
	mv lecture/physics_of_fluids.pdf .

tutorials: tuto1 tuto2

tuto1:
	latexmk -xelatex -cd $(TUTO01)

tuto2:
	latexmk -xelatex -cd $(TUTO02)

.PHONY: all lecture tutorials
