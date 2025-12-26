import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Alertwidget()));
}

class Alertwidget extends StatelessWidget {
  const Alertwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Widget')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showmydial(context);
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> _showmydial(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('This is an alert'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('This is alert error'),
              Text('This is Aman Ranabhat'),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Approve')),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // fixed missing semicolon
            },
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}
