// void main() {
//   greet();
//   greetWithName("Namuna ");
//   String value = greetWithReturnableType();

//   print(value);

//   int value2 = add(5, 10);
//   print(value2);
// }
// //   //<datatype > variablename;
// //    int age = 18 ;
// //   print(age);
// //   print('Your age is $age');
// //   String name = "Hello world";
// //   print(name);

// // var , final , const
// //   var name = "hello" ;
// //   print(name);

// // final String name = "Namuna";
// // final double doubleValue =  initValue;

// // dynamic name = "Namuna";
// // name = 20;
// // List<dynamic> names = ["aayush", "ram"];
// // names.add("sam");
// // names.remove("ram");
// // names[0] = "Stha";
// //   print(names);

// // for (int i = 0; i < names.length; i++) {
// //   print("Name: ${names[i]}");

// // for(String  name in names){
// //   if(name.length>= 4){
// //      print(name);
// //   }

// // }

// //   Map<String, dynamic> map = {"book": "Flutter", "published": 2017};
// //   map['book'] = "Fluter 2.0";
// //   map['somethingNew'] = "Just published ";
// //   print(map['book']);

// //syntax :
// //<returnType> functionName (parameter ){
// // function body
// // }
// // no return type  no parameter
// void greet() {
//   print("hello ");
// }

// //no return type with parameter
// void greetWithName(String name) {
//   print("Hello , $name ");
// }

// // RETURNTYPE  with no parameter
// String greetWithReturnableType() {
//   return "Hello world";
// }

// int add(int a, int b) {
//   return a + b;
// }

void main() {
  Student s1 = Student("Aayush", 2);
  s1.name = "Hari";
  s1.display();
  Student s2 = Student("Aayusha", 3);
  s2.display();
}

class Student {
  String name;
  int rollNo;

  Student(this.name, this.rollNo);

  void display() {
    print("Student name is $name and rollNo is $rollNo");
  }
}
