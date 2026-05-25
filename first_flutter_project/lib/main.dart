import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Mi flutter app",
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Material(
          color: Colors.green,
          child: Center(
            child: Text("Esto es un texto", textDirection: TextDirection.ltr,)
          ),
        ),
      ),
    ),
  );
}