# the compiler to use
CC = clang

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall
  
#files to link:
LDFLAGS = -lstdc++
  
# the name to use for both the target source file, and the output file:
TARGET = eval
  
all: $(TARGET)
  
$(TARGET): $(TARGET).cpp
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).cpp $(LFLAGS) tborg.o $(LDFLAGS)

tborg.o: tborg.cpp
	$(CC) $(CFLAGS) -c tborg.cpp
