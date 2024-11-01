# Set the compiler
CXX = g++

# Set compiler flags
CXXFLAGS = -I src  # Include the src directory for header files

# Target for building the final executable
all: vibescript

vibescript: lexer.o parser.o main.o
	$(CXX) -o vibescript lexer.o parser.o main.o

# Rule for generating lexer.o
lexer.o: src/lexer.l
	flex -o lexer.cpp src/lexer.l
	$(CXX) $(CXXFLAGS) -c lexer.cpp -o lexer.o

# Rule for generating parser.o
parser.o: src/parser.y
	bison -d -o parser.cpp src/parser.y
	$(CXX) $(CXXFLAGS) -c parser.cpp -o parser.o

# Rule for generating main.o
main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c src/main.cpp -o main.o

# Clean rule to remove generated files
clean:
	rm -f *.o lexer.cpp parser.cpp parser.hpp vibescript
