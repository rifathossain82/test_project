import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: 300,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.blue,
              ),
              Positioned(
                child: Container(height: 50,width: 150,color: Colors.white,child: Center(child: Text('Hello World')),),top: 20,left: 20,
              )
            ],
          )
      ),
    );
  }
}
