# Linux makefile for the Boost Travis CI test project

TARGET = boost_test

OBJS = \
	boost_test.o

all: $(TARGET)

test: $(TARGET)
	./$(TARGET)

clean:
	-rm -f $(OBJS)

cleanall: clean
	-rm -f $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -g -o2 -o $@ $^

.cpp.o:
	$(CXX) -c -Wall -o2 -I inc -o $@ $<

# dependencies

# EOF
