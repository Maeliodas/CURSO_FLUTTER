import 'dart:math';

import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
          color: Colors.yellow,
          child: Center(
            child: Text(generateNumbers(), textDirection: TextDirection.ltr,)
          )
        );
  }

  String generateNumbers(){
    var r=Random();
    int i=r.nextInt(20);
    return 'Un numero random del 0 al 20 es: ${i}';
  }
}