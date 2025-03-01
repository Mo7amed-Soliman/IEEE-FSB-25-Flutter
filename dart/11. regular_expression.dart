//! Regular expression
//? https://regexr.com/

//? They are used in a wide range of applications, including validating user input,
//? searching for patterns in text, and manipulating strings.

//! Examples

//? Example 1: Email Validation

bool isValidEmail(String email) {
  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  return emailRegex.hasMatch(email);
}

void main() {
  print(isValidEmail('user@example.com')); // true
  print(isValidEmail('invalid.email')); // false
}

//! ^ : Anchors the match at the beginning of the string.
//? $ : Anchors the match at the end of the string.
//* . : matches any single character except a newline.

//! []: matches any character inside the brackets.
//? [^ ]: matches any character not inside the brackets.

//* | : (or) matches either the pattern on the left or the pattern on the right.
//? (pattern) : (group) matches the pattern inside the parentheses. 
//* ? : matches (zero or one) occurrence of the pattern to its left.
//! + : matches (one or more) repetitions of the pattern to its left.
//* * : matches (zero or more) repetitions of the pattern to its left.

//* \d : matches any digit (0-9).
//? \w : matches any word character (a-z, A-Z, 0-9, _).
//! \s : matches any whitespace character (space, tab, newline).

//* \D : matches any non-digit character.
//? \W : matches any non-word character.
//! \S : matches any non-whitespace character.


//! { } : Number of repetitions
//? { ,} : Number of repetitions or more
//* { , }  : Number of repetitions from to 
 

// r'^.$' : matches a string of length 1.
// r'^\d+$' : matches a string of digits.
// r'^[a-zA-Z0-9]+$' : matches a string of alphanumeric characters.

//! Example 2: Phone Number Validation
// create a regex to validate a phone number in the format e.g.
// 01123456789
// 01234567896
// 01534567888
// 01034567895
//* 1.  r'^(011)|(012)|(015)|(010)\d{8}$'
//? 2.  r'^(01)[1250]\d{8}$'