//* Branches
// This page shows how you can control the flow of your Dart code using branches:

//? if statements and elements
//? switch statements and expressions
//? Ternary Operator (? :)

//! examples
//? if statements and elements
/*
 int age = 20;

  if (age >= 18) {
    print("You are an adult.");
  } else {
    print("You are a minor.");
  }
  
  int marks = 85;

  if (marks >= 90) {
    print("Grade: A+");
  } else if (marks >= 80) {
    print("Grade: A");
  } else if (marks >= 70) {
    print("Grade: B");
  } else {
    print("Grade: C");
  }
*/

//? switch
/*

String day = "Monday";

  switch (day) {
    case "Monday":
      print("Start of the work week!");
      break;
    case "Friday":
      print("Weekend is near!");
      break;
    default:
      print("Regular day.");
  }
  
String day = "Saturday";

  String mood = switch (day) {
    "Monday" => "Tired",
    "Friday" => "Excited",
    "Saturday" || "Sunday" => "Relaxed",
    _ => "Neutral",
  };
  print(mood); // Output: Relaxed

  */

// ? Ternary Operator (? :)
/*

 int age = 18;
 String result = (age >= 18) ? t : f;
 print(result);

*/

//* Loops
// This page shows how you can control the flow of your Dart code using loops and supporting statements:

//? for loops
//? while and do while loops
//? break and continue

//! example
//? for loops
/*
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

*/

//? for in 
/*
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  for (var fruit in fruits) {
    print(fruit.toUpperCase());
  }
 
*/


//? while and do while
/* 
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
  
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);
  
*/

// ? break and continue
/*
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break; // Exit the loop when i is 5
    }
    print(i);
  }
  
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // Skip even numbers
    }
    print(i);
  }
  
*/