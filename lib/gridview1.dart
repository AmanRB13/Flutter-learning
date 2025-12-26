import 'package:flutter/material.dart';

void main() {
  runApp(MyGrid());
}

class MyGrid extends StatelessWidget {
  MyGrid({super.key});

  List<String> fruits = ['apple', 'orange', 'grapes', 'banana'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list and grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: GridView.builder(
        itemCount: fruits.length,

        // FIRST → gridDelegate
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),

        // SECOND → itemBuilder
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(fruits[index], style: TextStyle(fontSize: 18)),
            ),
          );
        },
      ),
    );
  }
}
