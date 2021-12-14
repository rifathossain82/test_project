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

        child: TextButton(
          onPressed: (){
            Fluttertoast.showToast(
              msg: 'You click button',
              fontSize: 18,
              backgroundColor: Colors.blue,
              gravity: ToastGravity.CENTER,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_LONG,

            );

          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}
