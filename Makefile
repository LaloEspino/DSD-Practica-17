prueba_display_ascii:  prueba_display_ascii.o gfxModified.o
	g++ -std=c++11 prueba_display_ascii.o gfxModified.o -o prueba_display_ascii -I/usr/X11R6/include -L/usr/X11R6/lib -lX11 -lm
prueba_display_ascii.o: prueba_display_ascii.cpp gfxModified.o
	g++ -std=c++11 prueba_display_ascii.cpp -c
gfxModified.o: gfxModified.c gfxModified.h
	gcc gfxModified.c -c