import 'package:flutter/material.dart';
import 'package:project_1/entities/user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  User user = User(firstName: 'Maksym', lastName: 'Prokopenko');

  bool _isEditing = false;

  TextEditingController _firstNameInput = TextEditingController();
  TextEditingController _lastNameInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Project-1 by Prokopenko"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "First name: ${user.firstName}",
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Last name: ${user.lastName}",
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            _isEditing
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: _firstNameInput,
                        decoration: InputDecoration(labelText:"First name"),
                      ),
                      TextField(
                        controller: _lastNameInput,
                        decoration: InputDecoration(labelText:"Last name"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                user.firstName = _firstNameInput.text;
                                user.lastName = _lastNameInput.text;
                                _isEditing = false;
                              });
                            },
                            child: Text('Save'),
                          ),
                        ],
                      ),
                    ],
                  )
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _firstNameInput.text = user.firstName;
                        _lastNameInput.text = user.lastName;
                        _isEditing = true;
                      });
                    },
                    child: Text('Edit'),
                  ),
          ],
        ),
      ),
    );
  }
}
