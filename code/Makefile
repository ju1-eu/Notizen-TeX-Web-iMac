# ju  17-Jan-21  Makefile - iMac
# fileende löschen *.x unter iMac!! 
# *.c o. *.cpp o. *.cc
TARGETS=\
	hallowelt\
	hallowelt_C++ 		


#-----------------------------------
# c
CC:=gcc
CDEBUG=-g3 -Wextra -Wno-missing-field-initializers -std=c11 # -Wall  
CRELEASE=-std=c11 -O2
# Bibliothek
CLIBS=-lz Modules.h -lm # 	FunctionsBib.c FunctionsBib.h MeineBib.c MeineBib.h -lm
CLIBS=-lm 
# c++
CXX:=g++
CXXDEBUG=-g3 -Wextra -Wno-missing-field-initializers -std=c++17   # -Wall 
CXXRELEASE=-std=c++17 -O2

all: $(TARGETS)
# gcc hallo.c -o hallo
%.x: %.c
	$(CC) $(CDEBUG) $(CLIBS) $< -o $@
	
# g++ hallo.cpp -o hallo
%.x: %.cpp 
	$(CXX) $(CXXDEBUG) $(CLIBS) $< -o $@

# g++ hallo.cc -o hallo
%.x: %.cc
	$(CXX) $(CXXDEBUG) $(CLIBS) $< -o $@	

# Main.c -> Release o. Debug
release: Main.o #MeineBib.o
	$(CC) $(CRELEASE) Main.c -o MainRelease

debug: Main.o #MeineBib.o
	$(CC) $(CDEBUG)   Main.c -o MainDebug

Main.o: Main.c
	$(CC) -c Main.c

#MeineBib.o: MeineBib.c
#	$(CC) -c MeineBib.c

clean:
	#rm -r *.x -Force
	rm -rf *.o
	rm hallowelt_C++
	rm hallowelt	
	rm MainRelease 
	rm MainDebug 
