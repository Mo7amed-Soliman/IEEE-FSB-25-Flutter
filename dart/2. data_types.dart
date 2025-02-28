//? Primitive Data Types
/*
* Dart passes primitive types (e.g., int, double, bool, String) by value.
* This means a copy of the value is passed to a function. 
* Changes inside the function do not affect the original variable.
*/

//! Numbers  (int, double, num)
//! Strings  (String)
//! Booleans (bool)

//? variable, declare , initialize  , assignment
// example
/*
! syntax                
? data_type name_variable = value;

* declare and initialize 
String name = "Mohamed Soliman";  
* assignment
name = "Aye Soliman";

*/

//? how you turn a string into a number, or vice versa

// String -> int
var one = int.parse('1');

// int -> String
String oneAsString = 1.toString();


//* final : list means that the reference to the list cannot be changed, but the contents of the list can still be modified.
//* Use final when the value is calculated at runtime but should not change afterward.

/*

  final int x = 10;
  x = 20; // This is NOT allowed (reassigning the value)
 
  list1[0] = 10; // This is allowed
  list1.add(4); // This is allowed
  list1 = [5, 6, 7]; // This is NOT allowed (reassigning the reference)
  final list2 = list1; // This is allowed (creating a new reference)
  list2[0] = 15; // This is allowed (modifying the reference)

  print(list1);
  print(list2);
  
  final list3 = [1, 2, 3];
  final list4 = list3.toList(); // This is allowed (converting to a List)
  list4[0] = 20; // This is allowed (modifying the reference)

  print(list3);
  print(list4);


*/


//* const : list is fully immutable. Neither the reference nor the contents of the list can be changed.
//* Use const when the value is known at compile time and should never change.

/*

  const int y = 10;
  y = 20; // This is NOT allowed (reassigning the value)
  const list1 = [1, 2, 3];
  list1[0] = 10; // This is NOT allowed
  list1.add(4);  // This is NOT allowed
  list1 = [5, 6, 7]; // This is NOT allowed

*/

//* var 
//* When you declare a variable with var, its type is inferred from the value assigned to it at compile time.
//* Once the type is inferred, the variable cannot change its type.
//* It provides type safety because the type is fixed after initialization. 

/*
 var x = 10; // Dart infers x as an `int`
  print(x); // Output: 10

  x = 20; // Allowed, because 20 is also an `int`
  x = "Hello"; // Error: A value of type 'String' can't be assigned to a variable of type 'int'
*/

//* dynamic
//* When you declare a variable with dynamic, its type can change at runtime.
//* It allows you to assign values of any type to the variable.
//* It sacrifices type safety for 'flexibility'.
 
/*
  dynamic y = 10; // y is initially an `int`
  print(y); // Output: 10

  y = "Hello"; // Allowed, y is now a `String`
  print(y); // Output: Hello

  y = true; // Allowed, y is now a `bool`
  print(y); // Output: true

*/

