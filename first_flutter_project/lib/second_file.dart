import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_flutter_project/util.dart';

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
          //color: Colors.yellow,
          child: SingleChildScrollView(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Icon(Icons.ac_unit),
          Container(
            height: 500.0,
            width: 300.0,
            // alignment: Alignment(0,0),
            // decoration: BoxDecoration(
            //   gradient: RadialGradient(
            //     colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
            //     stops: [0.2, 0.5, 0.7, 1],
            //     center: Alignment(0.1, 0.2),
            //     focal: Alignment(-0.1, 0.3)
            //   )
            // ),
             color: lightPurpleColor,
            //   child: GestureDetector(
            //     onTap: (){
            //       ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
            //         content: new Text("Presionado"),
            //         duration: Duration(seconds: 2),
            //       )
            //       );            
            //     },
            //      child: Text(generateNumbers(), textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white,fontSize: 15.0, fontWeight: FontWeight.bold)
            //      )
              //)
          ),
          Container(
            height: 500.0,
            width: 100.0,
            color: Colors.green,
          )
          ], 
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