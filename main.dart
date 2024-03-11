import 'user.dart';
import 'student.dart';

void main() {
  void checkIfNull(int? x) {
    int y = x ?? 5;
    print(y);
  }

  void assignIfNull(int? x) {
    x ??= 5;
    print(x);
  }

  // checkIfNull(null);
  // assignIfNull(null);

  // User test = User("Test", 20);
  // var color = test.hairColor?.toUpperCase();
  // print(color);

  // User user = User.init();
  // print('name: ${user.name}, age: ${user.age}, hair color: ${user.hairColor}');

  // user
  //   ..name = "Maksym"
  //   ..age = 22;
  // print('name: ${user.name}, age: ${user.age}, hair color: ${user.hairColor}');

  // лямбда функції і замикання

  // int addition(x, y) => x+y;
  // print(addition(5, 3));

  // Function counter() {
  //   int count = 0;
  //   return () => ++count;
  // }

  // var increment = counter();
  // print(increment());
  // print(increment());
  // print(increment());

  // параметри за замовчуванням

  // void info({String name = "not specified", String sex = "not specified"}){
  //   print('Name: ${name}, sex: ${sex}');
  // }

  // info(name: "Maksym",sex: "Male");

  // Конструктори
  // bool isStudent = true;
  // var person = User.factory(isStudent);
  // print(person is Student);

  // User user = User.init();
  // print('name: ${user.name}, age:${user.age}, hair color: ${user.hairColor}');

  // Міксини

  // User user = User.init();
  // user..name = "Maksym";
  // user.greet(user.name);

  // ассерт

  // int x = 5;
  // assert(x >= 0);
  // print('x: $x');

  //робота з колекціями

  // List<int> numbers = [1, 2, 3, 4, 5];
  // numbers.add(6);
  // numbers.addAll([7, 8, 9, 10]);
  // numbers.removeAt(2);
  // numbers[0] = 100;
  // bool containNumber = numbers.contains(3);
  // print(containNumber);
  // for (int number in numbers) {
  //   print(number);
  // }

  // Set<String> names = {'Maksym', 'Artem', 'Anna'};
  // names.add('Sergey');
  // names.remove('Anna');
  // bool containName = names.contains('Anna');
  // print(containName);
  // for (String name in names) {
  //   print(name);
  // }

  // Map<String, int> ages = {'Maksym': 22, 'Artem': 21, 'Anna': 20};
  // ages['Sergey'] = 21;
  // ages.remove('Anna');
  // bool containKey = ages.containsKey('Anna');
  // print(containKey);
  // bool containValue = ages.containsValue(22);
  // print(containValue);
  // ages.forEach((key, value) {
  //   print('$key: $value');
  // });
}
