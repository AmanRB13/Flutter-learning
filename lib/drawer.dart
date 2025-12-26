import 'package:flutter/material.dart';

void main() {
  runApp(DrawerWidget());
}

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/0/0d/Nelson_Mandela-2008_%28edit%29.jpg',
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'aman',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('amanranabhat30@gmail.com'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              ListTile(leading: Icon(Icons.folder), title: Text('my files')),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('shared with me'),
              ),
              ListTile(leading: Icon(Icons.delete), title: Text('delete')),
              ListTile(leading: Icon(Icons.upload), title: Text('uploads')),
              ListTile(leading: Icon(Icons.share), title: Text('share')),
              ListTile(leading: Icon(Icons.logout), title: Text('log out')),
            ],
          ),
        ),
      ),

      appBar: AppBar(title: Text('Drawer')),
      body: Center(child: Text('hey there')),
    );
  }
}
