import 'package:flutter/material.dart';

void main() {
  runApp(Imagewidget());
}

class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Widget')),
        body: Center(
          child: Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 10)]),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              fit: BoxFit.cover, // Makes the image cover the container
            ),
          ),
        ),
      ),
    );
  }
}
