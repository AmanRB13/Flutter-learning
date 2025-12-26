import 'package:flutter/material.dart';

void main() {
  runApp(FormsWidget());
}

class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  final _formkey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  trysubmit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      _formkey.currentState!.save();
      submitform();
    } else {
      print('error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Forms')),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'enter the first name',
                    ),
                    key: ValueKey('firstname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'first name has to be entered';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'enter the last name',
                    ),
                    key: ValueKey('lastname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'last name has to be entered';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'enter the email '),
                    key: ValueKey('email'),
                    validator: (value) {
                      if (!value.toString().contains('@')) {
                        return 'enter the valid email';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(hintText: 'enter the password'),
                    key: ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return 'password name has to be greater than 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: Text('submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
