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
      body:Container(
        color: Colors.grey[600],
        child: Text("Hello",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        padding: EdgeInsets.fromLTRB(20,30,40,50),
        margin: EdgeInsets.fromLTRB(5,8,12,15),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("GO"),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}


/*

 */