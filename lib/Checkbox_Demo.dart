import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
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

  bool value1=false;
  bool value2=false;
  bool value3=false;
  bool value4=false;

  var txt='You don\'t like any subject';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Column(
              children: <Widget>[
                Text("What is your favourite subject?",style: TextStyle(fontSize: 18,),),
                SizedBox(height: 16,),
                CheckboxListTile(
                    title: Text('Bangla'),
                    secondary: Icon(Icons.book),
                    value: value1,
                    onChanged: (value){
                      setState(() {
                        value1=value!;
                      });
                    }),
                CheckboxListTile(
                    title: Text('English'),
                    secondary: Icon(Icons.book),
                    value: value2,
                    onChanged: (value){
                      setState(() {
                        value2=value!;
                      });
                    }),
                CheckboxListTile(
                    title: Text('Math'),
                    secondary: Icon(Icons.book),
                    value: value3,
                    onChanged: (value){
                      setState(() {
                        value3=value!;
                      });
                    }),
                CheckboxListTile(
                    title: Text('Religion'),
                    secondary: Icon(Icons.book),
                    value: value4,
                    onChanged: (value){
                      setState(() {
                        value4=value!;
                      });
                    })
              ],
            ),
            SizedBox(height: 16,),
            Text('You like : '+show()),
          ],
        ),
      ),
    );
  }
  String show(){
    var m1=value1==true ? 'Bangla ':'';
    var m2=value2==true ? 'English ':'';
    var m3=value3==true ? 'Math ':'';

    return m1+m2+m3;

  }
}

