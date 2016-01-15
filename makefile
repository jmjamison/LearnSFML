#Makefile for learning SFML\include# 1/12/2016
CC = g++
CFLAGS= -g -Wall -fexceptions -DSFML_STATIC -g -IC:\SFML-2.3.2-tdm\include
LDFLAGS = -LC:\SFML-2.3.2-tdm\lib  -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopenal32 -ljpeg -lfreetype -lopengl32 -lwinmm -lkernel32 -luser32 -lgdi32 -lcomctl32 
FILES = main.cpp
OUT_FILE = sfml-app.exe

build:	$(FILES)
	$(CC) $(CFLAGS) -o $(OUT_FILE) $(FILES) $(LDFLAGS)
clean:	
	rm -rf *.o