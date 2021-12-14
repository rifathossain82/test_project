import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue,Colors.black],
              )
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.black38,Colors.white38,],radius: 1,
            )
        ),
      ),
    );
  }
}
