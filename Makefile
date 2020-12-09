#Makefile
all: scoup scoup_resume cor sp
scoup: src/scoup.cpp src/ou.h src/node.h
	g++ -g -fopenmp -o scoup src/scoup.cpp
scoup_resume: src/scoup_resume.cpp src/ou.h src/node.h
	g++ -g -fopenmp -o scoup_resume src/scoup_resume.cpp
cor: src/correlation.cpp src/ou.h src/node.h
	g++ -g -fopenmp -o cor src/correlation.cpp
sp: src/sp.cpp src/sp.h
	g++ -o sp src/sp.cpp -lblas -llapack
