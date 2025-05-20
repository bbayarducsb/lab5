// heap.cpp
// Diba Mirza

#include "heap.h"
#include <iostream>
using std::cout;

// Pushes a value into the heap, then ensures
// the heap is correctly arranged
void Heap::push(int value){
  //empty case
  if(empty()) {
    vdata.push_back(value); 
    return; 
  }
  //there are larger nodes already in heap
  for(int i = 0; i < (int) vdata.size(); i++) {
    if(value < vdata.at(i)) {
      vdata.insert(vdata.begin() + i, value); 
      return; 
    }
  } 
  //largest node
  vdata.push_back(value); 
}

// Pops the minimum value off the heap
// (but does not return it), then ensures
// the heap is correctly arranged
void Heap::pop(){
  vdata.erase(vdata.begin()); 
}

// Returns the minimum element in the heap
int Heap::top(){
  return vdata.at(0); 
}

// Returns true if the heap is empty, false otherwise
bool Heap::empty(){
  return (vdata.size() == 0);
}
    