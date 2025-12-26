import 'package:flutter/material.dart';

void main() {
  runApp(ListGrid1());
}

class ListGrid1 extends StatelessWidget {
  ListGrid1({super.key});

  List<String> fruits = ['apple', 'orange', 'grapes', 'banana'];
  Map fruits_person = {
    'name': ['apple', 'orange', 'grapes', 'banana'],
    'person': ['ram', 'shyam', 'hari', 'gopal'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list and grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),

              title: Text(fruits_person['name'][index]),
              subtitle: Text(fruits_person['person'][index]),
            ),
          );
        },
      ),
    );
  }
}
