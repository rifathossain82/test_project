import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog Box '),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        child: Text(
          'Show Alert',
          style: TextStyle(fontSize: 20, color: CupertinoColors.white),
        ),
        onPressed: () async{
          final value=await showCupertinoDialog(
            barrierDismissible: true,
            context: context,
            builder: CreateDialog,);
          switch(value){
            case 1:
              print('Yes');
              break;
            case 2:
              print('Maybe');
              break;
            case 3:
              print('No');
              break;

          }
        },
        color: CupertinoColors.activeGreen,
      ),
    );
  }
}

Widget CreateDialog(BuildContext context)=>CupertinoAlertDialog(
  title: Text('Unable To Retrive Data',style: TextStyle(fontSize: 22),),
  content: Text('There was a network message',style: TextStyle(fontSize: 16),),
  actions: [
    CupertinoDialogAction(
      child: Text('Yes',style: TextStyle(color: CupertinoColors.activeGreen),),
      onPressed: ()=>Navigator.pop(context,1),
    ),
    CupertinoDialogAction(
      child: Text('Maybe'),
      onPressed: ()=>Navigator.pop(context,2),
    ),
    CupertinoDialogAction(
      child: Text('No',style: TextStyle(color: CupertinoColors.destructiveRed),),
      onPressed: ()=>Navigator.pop(context,3),
    )
  ],
);