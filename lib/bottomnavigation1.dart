//  this is just simple bottom navigaton //
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selectedindex = 0;
  List<Widget> widgets = [
    Text('home'),
    Text('search'),
    Text('add'),
    Text('profile'),
  ];
  void ontappeditem(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello world')),
      body: Center(child: widgets.elementAt(selectedindex)),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],

        currentIndex: selectedindex,

        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        onTap: ontappeditem,
      ),
    );
  }
}
