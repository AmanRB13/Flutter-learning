import 'package:flutter/material.dart';

void main() {
  runApp(MyGrid());
}

class MyGrid extends StatelessWidget {
  MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list and grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          Card(child: Center(child: Text('APPLE'))),
          Card(child: Center(child: Text('ORANGE'))),
          Card(child: Center(child: Text('GRAPES'))),
          Card(child: Center(child: Text('BANANA'))),
        ],
      ),
    );
  }
}
