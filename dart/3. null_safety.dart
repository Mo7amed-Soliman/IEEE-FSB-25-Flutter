//? Null Safety is a feature in Dart that helps prevent null errors

//* Non-nullable by Default
/*
int x = 10; // x is non-nullable
x = null; // Error: A value of type 'Null' can't be assigned to a variable of type 'int'
*/

//* Nullable Types:
//* To allow a variable to hold null, you append a ? to the type.
/*
int ? y = 10; // y can hold an `int` or `null`
y = null; // Allowed
*/

//* Null Assertion Operator (!)
//* If you're certain a nullable variable is not null at a specific point,
//* you can use the ! operator to 'cast it to a non-nullable type'.
//! Avoid using the null assertion operator (!) excessively.

//! example
int? a = null; // can hold an `int` or `null`
int b = a!; // error: a is asserted to be non-null

//* Late
//* If you want to 'initialize a non-nullable variable later',
//* you can use the 'late' keyword.
//* This tells Dart that the variable will be initialized before it's used
//! If you mark a variable as late, ensure it is initialized before use.
//! Otherwise, you'll get a 'runtime error'.
/*
late int c;
c = 10; // Initialized later
print(c); // Works fine
*/

//? 1. Null-Aware Operator (??)

void nullAssertionOperator() {
  int? score;
  print(score ?? 0); // Output: 0 (default if `score` is null)

  String? message;
  print(message ?? 'No message'); // Output: No message
}

//? 2. Null-Aware Access (?.)

class User {
  String? name;
  User([this.name]);
}

void nullAwareAccess() {
  User? user;
  user = null;
  print(user?.name?.toUpperCase() ?? 'Unknown'); // Output: Unknown

  user = User('Alice');
  print(user.name?.toUpperCase()); // Output: ALICE
}

//? 3. Null-Aware Spread (...?)

void nullAwareSpread() {
  List<int>? nullableList;
  List<int> combined = [1, 2, ...?nullableList]; // Handles null list
  print(combined); // Output: [1, 2]

  List<int>? validList = [3, 4];
  combined = [1, 2, ...validList];
  print(combined); // Output: [1, 2, 3, 4]
}

//! example 1

void main() {
  int? age;
  age = getAge();
  print(age);
  age ??= 30; // age = age != null ? age : 30; // If age is null, use 30
  print(age);
}

int? getAge() {
  return 25;
}

//! example 2
void fun2() {
  List<int?> scores = [100, null, 90];
  int total = 0;

  for (var score in scores) {
    total += score ?? 0; // Replace null with 0
  }

  print(total); // Output: 190 (100 + 0 + 90)
}

//! example 3
void fun3() {
  int? x;
  print(x!); // Runtime error: `x` is null!

  // late int y;
  // print(y); // compile-time error: `y` is not initialized!
}
