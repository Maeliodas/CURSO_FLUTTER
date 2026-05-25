import 'package:flutter/material.dart';
import 'package:first_flutter_project/second_file.dart';
void main() => runApp(MyClass() );

class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi flutter app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
          actions: <Widget>[
            Icon(Icons.settings)
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Text("Esto es texto en la appbar"),
          ),
        ),
        body: SecondClass()
      )
    );
  }

}