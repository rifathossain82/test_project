import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Row(
        children: <Widget>[
          Text('Rifat Hossain'),
          FlatButton(
            onPressed: (){},
            child: Text('GO'),
            color: Colors.red,
          ),
          Container(
            child: Text('Hello World'),
            color: Colors.greenAccent,
            padding: EdgeInsets.all(30),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("GO"),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
