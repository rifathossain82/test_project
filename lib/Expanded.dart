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
          Expanded(
            child: Image.asset('assets/gulugulu.jpg'),
            flex: 10,
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: Text('1'),
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: Text('2'),
              color: Colors.lightBlue,
              padding: EdgeInsets.all(30.0),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: Text('3'),
              color: Colors.lightGreenAccent,
              padding: EdgeInsets.all(30.0),
            ),
          ),
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
