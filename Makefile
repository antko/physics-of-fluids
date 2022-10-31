LECTURE=lecture/physics_of_fluids.tex
TUTO01=tutorials/tutorial_01.tex
TUTO02=tutorials/tutorial_02.tex
TUTO03=tutorials/tutorial_03.tex
TUTO04=tutorials/tutorial_04.tex
TUTO05=tutorials/tutorial_05.tex
TUTO06=tutorials/tutorial_06.tex

all: lecture tutorials

lecture:
	latexmk -xelatex -cd $(LECTURE)
	mv lecture/physics_of_fluids.pdf .

tutorials: tuto1 tuto2 tuto3 tuto4 tuto5 tuto6

tuto1:
	latexmk -xelatex -cd $(TUTO01)

tuto2:
	latexmk -xelatex -cd $(TUTO02)

tuto3:
	latexmk -xelatex -cd $(TUTO03)

tuto4:
	latexmk -xelatex -cd $(TUTO04)

tuto5:
	latexmk -xelatex -cd $(TUTO05)

tuto6:
	latexmk -xelatex -cd $(TUTO06)

.PHONY: all lecture tutorials
