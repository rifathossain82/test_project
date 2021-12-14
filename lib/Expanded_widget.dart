import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Project'),
          centerTitle: true,
          backgroundColor: Colors.lime,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(color: Colors.blue,)
            ),
            Expanded(
                flex: 1,
                child: Container(color: Colors.white,)
            ),
            Expanded(
                flex: 2,
                child: Container(color: Colors.orange,)
            )
          ],
        )
    );
  }
}
