
import 'package:flutter/material.dart';
import 'snackbar.dart';
import 'drawer.dart';
import 'dismissible.dart';
import 'listgrid1.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selectedindex = 0;
  PageController pageController = PageController();

  void ontappeditem(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(selectedindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello world')),
      body: PageView(
        controller: pageController,
        children: [
          SnackBarWidget(),
          DrawerWidget(),
          DismissibleWidget(),
          ListGrid1(),
        ],
      ),

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
