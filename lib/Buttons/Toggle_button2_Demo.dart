import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
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

  List<bool> selected=[false,false,false];

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
                colors: [Colors.blue, Colors.black],
                stops: [0.5, 0.1],
              )),
        ),
      ),
      body: Center(
        child: ToggleButtons(
          isSelected: selected,
          children: [
            Icon(Icons.home),
            Icon(Icons.phone),
            Icon(Icons.email),
          ],
          onPressed: (index){
            setState(() {
              selected[index]=!selected[index];
            });
          },
          color: Colors.green,   ///icon color
          selectedColor: Colors.orange,
          fillColor: Colors.red,
          //renderBorder: false,
          /*borderRadius: BorderRadius.circular(15),
          borderColor: Colors.green,
          borderWidth: 5,
          selectedBorderColor: Colors.orange,
          splashColor: Colors.blue,
          highlightColor: Colors.yellow,
          disabledColor: Colors.grey,
          disabledBorderColor: Colors.blueGrey,*/
          focusColor: Colors.redAccent,
          hoverColor: Colors.black26,


        ),
      ),
    );
  }
}
