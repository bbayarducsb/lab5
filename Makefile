CXX=g++ 
CXXFLAGS = -g --std=c++20 -Wall

all: heap 

heap: examheap.o heap.o
	${CXX} ${CXXFLAGS} examheap.o heap.o -o heap

examheap.o: 
	${CXX} ${CXXFLAGS} examheap.cpp -o examheap.o

heap.o: 
	${CXX} ${CXXFLAGS} heap.cpp -o heap.o

