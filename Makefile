prg=coldRay.$(shell arch)
com=gcc

src=src
obj=obj

head=$(src)/include.h $(src)/p.h $(src)/vars.h

prgobj=$(obj)/eventHandler.o $(obj)/main.o $(obj)/vars.o
prgflg=`sdl-config --cflags --libs` -lGL -lGLU -lglut

all: $(prg)

$(obj)/vars.o: $(head) $(src)/vars.c
	$(com) -c -o $(obj)/vars.o $(src)/vars.c

$(obj)/main.o: $(head) $(src)/main.c
	$(com) -c -o $(obj)/main.o $(src)/main.c

$(obj)/eventHandler.o: $(head) $(src)/eventHandler.c
	$(com) -c -o $(obj)/eventHandler.o $(src)/eventHandler.c

$(prg): $(prgobj)
	$(com) -o $(prg) $(prgobj) $(prgflg)
