/*
* In Dart, typedef is used to create custom type aliases for function signatures or complex types.
* It makes your code more readable and reusable by giving a name to a specific function type or data structure.

? typedef is commonly used for:

? Defining function types.

? Simplifying complex type definitions.

*/

//! example
//* 1. Typedef for Function Types

// Define a typedef for a function that takes two integers and returns an integer
typedef MathOperation = int Function(int a, int b);

// Functions that match the typedef
int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

void fun1() {
  // Use the typedef as a type
  MathOperation operation = add;
  print(operation(5, 3)); // Output: 8

  operation = subtract;
  print(operation(5, 3)); // Output: 2

  // Pass a function matching the typedef as an argument
  void calculate(MathOperation op, int x, int y) {
    print('Result: ${op(x, y)}');
  }

  calculate(add, 10, 4); // Output: Result: 14
  calculate(subtract, 10, 4); // Output: Result: 6
}

//* 2. Typedef for Complex Types

// Define a typedef for a map with string keys and list of integers as values
typedef StringListMap = Map<String, List<int>>;

void fun2() {
  // Use the typedef
  StringListMap myMap = {
    'numbers': [1, 2, 3],
    'ages': [25, 30, 35],
  };

  print(myMap); // Output: {numbers: [1, 2, 3], ages: [25, 30, 35]}
}

//* 3. Typedef with Generics

// Define a generic typedef for a function that takes two arguments of the same type and returns a value of that type
typedef BinaryOperation<T> = T Function(T a, T b);

// Functions that match the generic typedef
int multiply(int a, int b) => a * b;
double divide(double a, double b) => a / b;

void fun3() {
  // Use the generic typedef
  BinaryOperation<int> intOperation = multiply;
  print(intOperation(5, 3)); // Output: 15

  BinaryOperation<double> doubleOperation = divide;
  print(doubleOperation(10.0, 2.0)); // Output: 5.0
}
