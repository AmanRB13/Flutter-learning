import 'package:flutter/material.dart';

void main() {
  runApp(ListGrid());
}

class ListGrid extends StatelessWidget {
  const ListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list and grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: Container(
        child: ListView(
          children: [
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
            Card(child: ListTile(title: Text('orange'), subtitle: Text('ram'))),
          ],
        ),
      ),
    );
  }
}
