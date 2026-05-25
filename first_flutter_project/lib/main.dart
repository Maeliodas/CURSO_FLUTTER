import 'package:flutter/material.dart';

void main() => runApp(MyApp() );

class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo de Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}