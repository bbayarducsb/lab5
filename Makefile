CXX=g++ 
CXXFLAGS = -g --std=c++20 -Wall

all: heap 

heap: examheap.o heap.o
	${CXX} ${CXXFLAGS} heap.o examheap.o -o heap 

examheap.o: examheap.cpp
	${CXX} ${CXXFLAGS} examheap.cpp -c 

heap.o: heap.h heap.cpp
	${CXX} ${CXXFLAGS} heap.cpp -c 

clean:
	rm -f heap.o examheap.o

