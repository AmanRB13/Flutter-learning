import 'package:flutter/material.dart';

void main() {
  runApp(SnackBarWidget());
}

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SNACK BAR')),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                action: SnackBarAction(label: 'undo', onPressed: () {}),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                backgroundColor: Colors.green,
                duration: Duration(milliseconds: 3000),
                content: Text('this is snackbar'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('show snacker'),
          ),
        ),
      ),
    );
  }
}
