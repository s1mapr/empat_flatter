import 'greet.dart';
import 'student.dart';

class User with Greet{
  String _name;
  int _age;
  String? _hairColor;

  User(this._name, this._age, [this._hairColor]);

  User.init()
      : _name = "-",
        _age = 0,
        _hairColor = "-";

  String get name => _name;
  int get age => _age;
  String? get hairColor => _hairColor;

  set name(String name) => _name=name;
  set age(int age) => _age=age;
  set hairColor(String? hair) => _hairColor = hair;

  factory User.factory(bool isStudent) {
    if (isStudent) {
      return Student.init();
    } else {
      return User.init();
    }
  }
}
