import 'package:flutter/material.dart';

class SecondPageClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Pantalla 2'),
        ),
        actions: <Widget>[
          Icon(Icons.settings),
        ],
      ),
      body: Material(
        child: Column(
          children: <Widget>[
            Text('Pantalla 2'),
            GestureDetector(
              child: Text('¡Llévame de regreso!'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}