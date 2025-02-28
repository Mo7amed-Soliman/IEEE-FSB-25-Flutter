/*
In Dart, collections are used to store and 
manipulate groups of objects. Dart provides several 
types of collections, including 
lists, sets, and maps. Here's an overview of each

*/
//* 1. Lists
//* A list is an ordered collection of objects,
//* where each object can be accessed by its index.
//* Lists are similar to arrays in other languages.

//! example

void fun1() {
  // Creating a list
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  // Accessing elements
  print(fruits[0]); // Output: Apple

  // Adding an element
  fruits.add('Orange');

  // Iterating through the list
  for (var fruit in fruits) {
    print(fruit);
  }

  // List methods
  print(fruits.length); // Output: 4
  print(fruits.contains('Banana')); // Output: true
}

//* 2. Sets : A set is an unordered collection of unique objects.
//* Unlike lists, sets do not allow duplicate values.

//! example

void fun2() {
  // Creating a set
  Set<int> numbers = {1, 2, 3, 4, 5};

  // Adding an element
  numbers.add(6);

  // Trying to add a duplicate (ignored)
  numbers.add(3);

  // Iterating through the set
  for (var number in numbers) {
    print(number);
  }

  // Set methods
  print(numbers.contains(4)); // Output: true
  print(numbers.length); // Output: 6
}

//* 3. Maps
//* A map is a collection of key-value pairs,
//* where each key is unique. Maps are useful for associating values with specific keys.

//! example

void fun3() {
  // Creating a map
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };

  // Accessing values
  print(ages['Alice']); // Output: 25

  // Adding a new key-value pair
  ages['David'] = 40;

  // Iterating through the map
  ages.forEach((name, age) {
    print('$name is $age years old');
  });

  // Map methods
  print(ages.containsKey('Bob')); // Output: true
  print(ages.length); // Output: 4
}
