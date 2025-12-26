import 'package:flutter/material.dart';

void main() {
  runApp(Tabwidget());
}

class Tabwidget extends StatelessWidget {
  const Tabwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 2,
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Whatsapp'),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue,
              indicatorWeight: 10,
              tabs: [
                Tab(icon: Icon(Icons.share), text: 'share'),
                Tab(icon: Icon(Icons.chat_bubble), text: 'status'),
                Tab(icon: Icon(Icons.chat), text: 'chats'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Text('share', style: TextStyle(fontSize: 10)),
                ),
              ),
              Container(
                child: Center(
                  child: Text('status', style: TextStyle(fontSize: 10)),
                ),
              ),

              Container(
                child: Center(
                  child: Text('chats', style: TextStyle(fontSize: 10)),
                ),
              ),
              Container(
                child: Center(
                  child: Text('chats', style: TextStyle(fontSize: 10)),
                ),
              ),
              Container(
                child: Center(
                  child: Text('chats', style: TextStyle(fontSize: 10)),
                ),
              ),
              Container(
                child: Center(
                  child: Text('chats', style: TextStyle(fontSize: 10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
