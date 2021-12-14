import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var current_value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Project'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(current_value==false?'Off':'On',style: TextStyle(fontSize: 18),),
              SizedBox(width: 16,),
              Switch(
                  value: current_value,
                  onChanged: (value) {
                    setState(() {
                      current_value=value;
                    });
                  }),

            ],
          ),
        ));
  }
}
