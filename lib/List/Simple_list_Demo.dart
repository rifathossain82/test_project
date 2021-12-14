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

  var text='Off';
  var status=false;
  var value_choose;
  List list_item=['Civil','Power','Computer','Electrical','Mechanical','Architecture'];

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
        child: ListView(
          //padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
          //scrollDirection: Axis.horizontal,
          //scrollDirection: Axis.vertical,
          //reverse: true,
          //physics: NeverScrollableScrollPhysics(), //never scroll list item
          children: [
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Jobayer Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
            ListTile(
              title: Text('Rifat Hossain'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.account_circle),

            ),
          ],
        ),
      ),
    );
  }
}
