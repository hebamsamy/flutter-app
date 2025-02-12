void main() {
  Person h = Person(id: 1, age: 40, isMale: false, name: "name");
  Person t = Person.adult(name: "ali");
  print(t.age);
  print(h.age);
  Student a = Student(id: 1, name: "ali", isMale: true, age: 27, Level: "Grad", GPA: 2.2);
  print(a);
  print(t);
  
}

class Person {
  int age;
  String name;
  bool isMale;
  int id;

  Person(
      {required this.id,
      required this.name,
      required this.age,
      required this.isMale});

  Person.init()
      : age = 0,
        name = "",
        isMale = true,
        id = 0;
  Person.adult({required this.name})
      : age = 18,
        isMale = true,
        id = 0;

@override
  String toString() {
    // TODO: implement toString
    return "this is Person";
  }
}


class Student extends Person {
  String Level;
  double GPA;

@override
  String toString() {
    // TODO: implement toString
    return "Student Name is $name";
  }
  Student(
      {required int id,
      required String name,
      required isMale,
      required int age,
      required this.Level,
      required this.GPA})
      : super(age: age, name: name, isMale: isMale, id: id);
}
