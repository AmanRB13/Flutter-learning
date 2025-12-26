import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BottomSheetWidget()));
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'bottm sheet Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              elevation: 0,
              isDismissible: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(title: Text('apple'), subtitle: Text('aman')),
                    ListTile(title: Text('orange'), subtitle: Text('ayush')),
                    ListTile(title: Text('grapes'), subtitle: Text('suman')),
                    ListTile(title: Text('orange'), subtitle: Text('suraj')),
                  ],
                );
              },
            );
          },
          child: Text('show button sheet'),
        ),
      ),
    );
  }
}
