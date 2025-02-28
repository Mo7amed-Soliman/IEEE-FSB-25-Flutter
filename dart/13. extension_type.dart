// ? extension type
// Type Safety: Prevents accidental mixing with raw int values

// Encapsulation: Keeps ID-related logic in one place

// Zero Overhead: Compiles directly to int at runtime

//? example
extension type IdNumber(int id) {
  // Private constructor with validation
  IdNumber.valueValidation(this.id) {
    if (id < 0) throw ArgumentError('ID must be non-negative');
  }
  // Wraps the 'int' type's '<' operator:
  operator <(IdNumber other) => id < other.id;
  // Doesn't declare the '+' operator, for example,
  // because addition does not make sense for ID numbers.
}

void main() {
  // Without the discipline of an extension type,
  // 'int' exposes ID numbers to unsafe operations:
  int myUnsafeId = 42424242;
  myUnsafeId = myUnsafeId + 10; // This works, but shouldn't be allowed for IDs.

  var safeId = IdNumber(42424242);
  // safeId + 10; // Compile-time error: No '+' operator.
  // myUnsafeId = safeId; // Compile-time error: Wrong type.
  myUnsafeId = safeId as int; // OK: Run-time cast to representation type.
  safeId < IdNumber(42424241); // OK: Uses wrapped '<' operator.

  try {
    var invalidId = IdNumber.valueValidation(-50);
    print(invalidId);
  } on Exception catch (e) {
    print(e);
  }
}
