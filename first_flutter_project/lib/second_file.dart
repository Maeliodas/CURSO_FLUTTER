import 'dart:math';

import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
          color: Colors.yellow,
          child: Center(
            child: Text('Un numero random del 0 al 20 es ${generateNumbers()}', textDirection: TextDirection.ltr,)
          )
        );
  }

  int generateNumbers(){
    var r=Random();
    int i=r.nextInt(20);
    return i;
  }
}