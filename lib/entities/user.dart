class User {
  String _firstName;
  String _lastName;

  User({String firstName = '-', String lastName = '-'})
      : _firstName = firstName,
        _lastName = lastName;

  String get firstName => _firstName;

  String get lastName => _lastName;

  set firstName(String firstName){
    _firstName = firstName.isEmpty?'-' : firstName;
  }

  set lastName(String lastName){
    _lastName = lastName.isEmpty?'-' : lastName;
  }
}
