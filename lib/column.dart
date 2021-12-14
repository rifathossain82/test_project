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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Hello'),
              Text('Programmers'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text('Rifat'),
              color: Colors.greenAccent,
              padding: EdgeInsets.all(10),
            ),
          ),
          Container(
            child: Text('Jobayer'),
            color: Colors.red,
            padding: EdgeInsets.all(20),
          ),
          Container(
            child: Text('Fedous Hasan'),
            color: Colors.yellow,
            padding: EdgeInsets.all(30),
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
