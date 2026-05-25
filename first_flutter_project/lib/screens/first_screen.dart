import 'dart:math';
import 'package:flutter/material.dart';


class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          title: Center(
            child: Text('Titulo'),
          ),
          actions: <Widget>[
            Icon(Icons.settings)
          ],
        ),
        body: Material(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Perro'),
                subtitle: Text('Esto es un animal'),
                trailing: Icon(Icons.access_time),
              ),
              ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('Gato'),
                subtitle: Text('Esto es otro animal'),
                trailing: Icon(Icons.access_time),
              ),
              Padding(
                child: Text('Perro'),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('Gato'),
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                color: Colors.green,
                padding: EdgeInsets.only(top: 20.0),
              )
            ]
          )
        ));
  }
}