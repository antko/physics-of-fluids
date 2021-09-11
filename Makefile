LECTURE=lecture/physics_of_fluids.tex

all:
	latexmk -xelatex -cd $(LECTURE)
