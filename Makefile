LECTURE=lecture/physics_of_fluids.tex
TUTO01=tutorials/tutorial_01.tex

all: lecture tutorials

lecture:
	latexmk -xelatex -cd $(LECTURE)
	mv lecture/physics_of_fluids.pdf .

tutorials:
	latexmk -xelatex -cd $(TUTO01)

.PHONY: all lecture tutorials
