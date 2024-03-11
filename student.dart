import 'user.dart';

class Student extends User {
  Student(String name, int age, [String? hairColor]) : super(name, age, hairColor);

  Student.init() : super.init();
}