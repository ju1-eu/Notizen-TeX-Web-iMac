# ju  1-Jun-20  Makefile - Win10
# *.c o. *.cpp o. *.cc
TARGETS=\
	hallowelt-C++.exe \
	hallowelt.exe \		
	
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
# gcc hallo.c -o hallo.exe
%.exe: %.c
	$(CC) $(CDEBUG) $(CLIBS) $< -o $@
	
# g++ hallo.cpp -o hallo.exe
%.exe: %.cpp 
	$(CXX) $(CXXDEBUG) $(CLIBS) $< -o $@

# g++ hallo.cc -o hallo.exe
%.exe: %.cc
	$(CXX) $(CXXDEBUG) $(CLIBS) $< -o $@	

# Main.c -> Release o. Debug
release: Main.o #MeineBib.o
	$(CC) $(CRELEASE) Main.c -o MainRelease.exe

debug: Main.o #MeineBib.o
	$(CC) $(CDEBUG)   Main.c -o MainDebug.exe

Main.o: Main.c
	$(CC) -c Main.c

#MeineBib.o: MeineBib.c
#	$(CC) -c MeineBib.c

clean:
	#rm -r *.exe -Force
	#rm -rf *.exe *~ *.o
	rm hallowelt-C++.exe
	rm hallowelt.exe	
	#rm MainRelease.exe 
	#rm MainDebug.exe 
