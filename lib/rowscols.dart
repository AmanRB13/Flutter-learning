import 'package:flutter/material.dart';

class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Rows and columns')),
      body: Container(
        height: h,
        width: w,
        color: Colors.red,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 60,
              color: Colors.green,
            ), // ← MISSING COMMA FIXED HERE

            Container(height: 50, width: 60, color: Colors.yellow),
            Container(height: 50, width: 60, color: Colors.purple),
            Container(height: 50, width: 60, color: Colors.black),
            Container(height: 50, width: 60, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
