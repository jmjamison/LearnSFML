#Makefile for learning SFML\include# 1/12/2016
CC = g++

UNAME := $(shell uname)

ifeq ($(UNAME),Linux)
FLAGS= -g -Wall -I/user/include/
LDFLAGS = -lsfml-graphics -lsfml-window -lsfml-system	
OUTFILE = sfml-1
else
CFLAGS= -g -Wall -fexceptions -DSFML_STATIC -g -IC:\SFML-2.3.2-tdm\include
LDFLAGS = -LC:\SFML-2.3.2-tdm\lib -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lsfml-audio-s -lsfml-network-s -lopenal32 -ljpeg -lfreetype -lgdi32 -lopengl32 -lwinmm -lkernel32 -luser32 -lgdi32 -lcomctl32 
OUTFILE = sfml-1.exe
endif


FILES = main.cpp


build:	$(FILES)
	$(CC) $(CFLAGS) $(FILES) $(LDFLAGS) -o $(OUTFILE)
clean:	
	rm -rf *.o
