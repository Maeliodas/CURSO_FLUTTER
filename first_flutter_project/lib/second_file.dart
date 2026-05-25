import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_flutter_project/util.dart';

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
          color: Colors.yellow,
          child: Container(
            height: 500.0,
            width: 300.0,
            alignment: Alignment(-1,-1),
            color: lightPurpleColor,
            child: Center(
              child: Text(generateNumbers(), textDirection: TextDirection.ltr,)
            )
          )
        );
  }

  String generateNumbers(){
    var r=Random();
    int i=r.nextInt(20);
    return 'Un numero random del 0 al 20 es: ${i}';
  }
}