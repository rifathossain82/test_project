import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  double d=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue,Colors.black],
                stops: [0.5,0.1],
              )
          ),
        ),
      ),
      body: Center(
        child: RichText(
            text: TextSpan(
                text: 'I am a ',
                style: TextStyle(color: Colors.black,fontSize: 22),
                children: [
                  TextSpan(
                    text: 'programmer',
                    style: TextStyle(fontSize: 22,color: Colors.red),
                  )
                ]
            )),
      ),
    );
  }
}
