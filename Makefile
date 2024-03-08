# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -std=c11

# Source files
SRCS = tinyxml2.cpp ppm.cpp parser.cpp raytracer.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Executable name
TARGET = raytracer

# Default rule
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) -lstdc++ -lm

# Rule to compile source files
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule
clean:
	rm -f $(OBJS) $(TARGET)
