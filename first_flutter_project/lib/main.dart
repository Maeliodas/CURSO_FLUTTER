import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Mi flutter app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body:
      Text("Esto es un texto", textDirection: TextDirection.ltr,)
      ),
    ),
  );
}