import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_flutter_project/util.dart';

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: Text(
                    "Expandido",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.yellow,
                  child: Text(
                    "Flexible",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  color: Colors.yellow,
                  child: Text(
                    "Flexible",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.yellow,
                  child: Text(
                    "Flexible",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
        ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple,
                  child: Text(
                    "Expandido",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              Expanded(
                flex:1,
                child: Container(
                  color: Colors.red,
                  child: Text(
                    "Expandido",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}