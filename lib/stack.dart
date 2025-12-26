import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StacKkWidget()));
}

class StacKkWidget extends StatelessWidget {
  const StacKkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SNACK BAR')),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assetss/0001_AdobeStock_460169080.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
