//? extensions
//? Used to add new functionality to existing classes without modifying their source code

//! Syntax
/*
extension <ExtensionName> on <Type> {
  New methods, getters, etc.
}
*/

// ? example 1

extension Parsing on String {
  int toInt() => int.parse(this);
  double toDouble() => double.parse(this);
}

// void example1() {
//   print('42'.toInt()); // 42
//   print('3.14'.toDouble()); // 3.14
// }

// ? example 2
extension DateTimeJson on DateTime {
  Map<String, dynamic> toJson() => {
        'year': year,
        'month': month,
        'day': day,
      };
}

void example2() {
  DateTime date = DateTime(2023, 10, 5);
  print(date.toJson()); // {year: 2023, month: 10, day: 5}
}

//! example 3

extension RegexExtensions on String {
  // Check if the string matches a regex pattern
  bool matches(Pattern pattern, {bool caseSensitive = true}) {
    return RegExp(
      pattern is String ? pattern : (pattern as RegExp).pattern,
      caseSensitive: caseSensitive,
    ).hasMatch(this);
  }

  // Extract all matches from the string
  List<String> allMatches(Pattern pattern, {bool caseSensitive = true}) {
    final regex = RegExp(
      pattern is String ? pattern : (pattern as RegExp).pattern,
      caseSensitive: caseSensitive,
    );
    return regex.allMatches(this).map((m) => m.group(0)!).toList();
  }

  // Split the string using a regex pattern
  List<String> splitByRegex(Pattern pattern, {bool caseSensitive = true}) {
    return split(
      RegExp(
        pattern is String ? pattern : (pattern as RegExp).pattern,
        caseSensitive: caseSensitive,
      ),
    );
  }

  // Common validations as getters
  bool get isValidEmail => matches(
        r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
      );

  bool get isValidPhone => matches(r'^\d{3}-\d{3}-\d{4}$');

  bool get isValidUrl => matches(
        r'^https?://([\w-]+\.)+[\w-]+(/[\w-./?%&=]*)?$',
      );

  bool get isNumeric => matches(r'^-?\d+$');
}

void main() {
  // Check if a string matches a pattern
  print('2023-10-05'.matches(r'\d{4}-\d{2}-\d{2}')); // true

  // Extract all matches
  print('123 456 789'.allMatches(r'\d+')); // [123, 456, 789]

  // Split by non-word characters
  print(
      'apple,banana;cherry'.splitByRegex(r'[^\w]+')); // [apple, banana, cherry]

  // Common validations
  print('user@example.com'.isValidEmail); // true
  print('123-456-7890'.isValidPhone); // true
  print('https://dart.dev'.isValidUrl); // true
  print('42'.isNumeric); // true
}
