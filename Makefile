#!/usr/bin/make

CXX := g++
CXXFLAGS += -Wall -std=c++17

LIBSRCS = $(filter-out ./main.cc,$(shell find . -name \*.cc))
LIBOBJS = $(patsubst %.cc,%.o,$(LIBSRCS))

$(info SRC = $(LIBSRCS))
$(info OBJ = $(LIBOBJS))

LDFLAGS = -L. -ldata

main: main.o libdata.a
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

$(LIBOBJS): %.o: %.cc
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c -o $@ $<

libdata.a: $(LIBOBJS)
	ar rcs $@ $^

clean:
	rm -f libdata.a $(LIBOBJS)

.PHONY: clean
