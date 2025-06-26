void main() {
  print(greet1("Ujjwal", 29));
  print(greet2(name: "John", age: 35));
}

String greet1(String name, int age) {
  return "Hi, my name is $name, and I am $age years old.";
}

/*
 *  named parameters
 * wrap parameters with curly braces
 */
String greet2({required String name, int? age}) {
  return "Hi, my name is $name, and I am $age years old.";
}
