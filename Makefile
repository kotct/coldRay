prg=coldRay.$(shell arch)
com=g++

src=src
obj=obj

head=$(src)/include.hpp $(src)/p.hpp $(src)/vars.hpp

prgobj=$(obj)/main.o $(obj)/vars.o
prgflg=`sdl-config --cflags --libs` -lGL -lGLU -lglut

all: $(prg)

$(obj)/vars.o: $(head) $(src)/vars.cpp
	$(com) -c -o $(obj)/vars.o $(src)/vars.cpp

$(obj)/main.o: $(head) $(src)/main.cpp
	$(com) -c -o $(obj)/main.o $(src)/main.cpp

$(prg): $(prgobj)
	$(com) -o $(prg) $(prgobj) $(prgflg)
