CXX=g++ 
CXXFLAGS = -g --std=c++20 -Wall

all: heap 

heap: examheap.o heap.o
	${CXX} ${CXXFLAGS} examheap.o heap.o -o heap