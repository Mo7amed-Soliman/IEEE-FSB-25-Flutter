//* A record is defined using parentheses () and can contain multiple fields,
//* each with its own type. The fields are separated by commas

var record1 = (1, 'Hello', true);
(int, String, bool) record2 = (1, 'Hello', true);

//? Accessing fields
//* Fields are accessed by index: $1, $2, etc.
/*
 print(record1.$1); // 1
 print(record2.$2); // Hello
 print(record1.$3); // true
*/

//? Named Fields
({int id, String name, bool isActive}) record = // ==  var record
    (id: 1, name: 'Hello', isActive: true);
//* Fields are accessed by name: user.id, user.name.
/*
print(record.id); 
print(record.name);  
print(record.isActive); 
*/

//! example

//* Returning Records from Functions
// Records let you return multiple values from a function without defining a class.
(int, String, double) getProduct() {
  return (101, 'Laptop dell', 999.99);
}

({int id, String name, double price}) getProductNamed() {
  return (id: 202, name: 'Laptop hp', price: 111.11);
}

void main() {
  var product = getProduct();
  print(product.$3); // 999.99

  var productNamed = getProductNamed();
  print(productNamed.price); // 111.11
}
