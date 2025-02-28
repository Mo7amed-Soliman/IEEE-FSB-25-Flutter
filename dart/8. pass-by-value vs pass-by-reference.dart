//? what is the output of the following code?
void main() {
  int x = 1;
  incrementVar(x);
  print(x); // ?

  List<int> list = [1, 2, 3];
  incrementAllValueInList(list);
  print(list); // ?
}

int incrementVar(int x) {
  return ++x;
}

List<int> incrementAllValueInList(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    list[i]++;
  }
  return list;
}

//? pass-by-value vs pass-by-reference

//! 1. Primitive Types (Pass-by-Value)
//* Dart passes primitive types (e.g., int, double, bool, String) by value.
//* This means a copy of the value is passed to a function.
//* Changes inside the function do not affect the original variable.

void passByValue() {
  int x = 5;
  modify(x);
  print(x); // Output: 5 (unchanged)
}

void modify(int num) {
  num = 10; // Modifies the copy, not the original
}

//! 2. Reference Types (Pass-by-Reference)
//* Dart passes reference types (e.g., List, Map, Object,custom classes) by reference.
//* This means the original variable is passed to a function.
//* Changes inside the function affect the original variable.

//* Dart passes a copy of the reference (the memory address pointing to the object).

//? This leads to two key behaviors:

//* Modifying the object (e.g., adding/updating elements) affects the original because both references point to the same object.

//* Reassigning the reference (e.g., creating a new list) does not affect the original because the copied reference is changed locally.

//! Example 1: Modifying the Object
void example1() {
  List<int> list = [1, 2, 3];
  updateList(list);
  print(list); // Output: [1, 2, 3, 4] (modified)
}

void updateList(List<int> data) {
  data.add(4); // Modifies the shared object
}

//! Example 2: Reassigning the Reference
void example2() {
  List<int> list = [1, 2, 3];
  reassignList(list);
  print(list); // Output: [1, 2, 3] (unchanged)
}

void reassignList(List<int> data) {
  data = [4, 5, 6]; // Reassigns the local copy of the reference
}

//? 3. Strings: A Special Case
//* Strings in Dart are immutable, meaning they cannot be modified after they are created.
//* This means that if you try to modify a string, it will create a new string with the modified characters.
//! Example 3
void example3() {
  String name = 'Alice';
  updateString(name);
  print(name); // Output: Alice (unchanged)
}

void updateString(String s) {
  s = 'Bob'; // Creates a new string, original is unaffected
}
