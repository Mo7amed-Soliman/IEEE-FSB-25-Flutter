/*
* Generics in Dart allow you to write flexible, reusable, 
* and type-safe code by enabling classes, functions, 
and interfaces to operate on any data type. 
Generics are widely used in Dart's collections (like List<T>, Set<T>, and Map<K, V>) 
and can also be applied to custom classes and functions.
*/

//! Why Use Generics?
//* Type Safety: Ensures that the correct data type is used, reducing runtime errors.

//* Code Reusability: Write a single implementation that works with multiple types.

//* Reduced Code Duplication: Avoid writing separate implementations for different types.

//! example 1

T getFirst<T>(List<T> list) {
  return list.first;
}

void fun1() {
  List<int> numbers = [1, 2, 3];
  List<String> names = ['Alice', 'Bob', 'Charlie'];

  print(getFirst(numbers)); // Output: 1
  print(getFirst(names)); // Output: Alice
}

//! example 2

class Pair<K, V> {
  K key;
  V value;

  Pair(this.key, this.value);

  void display() {
    print('Key: $key, Value: $value');
  }
}

void fun2() {
  Pair<String, int> pair = Pair<String, int>('Age', 25);
  pair.display(); // Output: Key: Age, Value: 25
}
