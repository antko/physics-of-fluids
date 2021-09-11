LECTURE=lecture/physics_of_fluids.tex

all:
	latexmk -xelatex -cd $(LECTURE)
	mv lecture/physics_of_fluids.pdf .
