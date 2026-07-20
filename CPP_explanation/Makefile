SHELL := cmd.exe

CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -pedantic -g -O0

EXEEXT := .exe

.PHONY: all clean

all: Test1$(EXEEXT)

%$(EXEEXT): %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

%: %$(EXEEXT)
	.\$<

clean:
	if exist *.exe del /Q *.exe