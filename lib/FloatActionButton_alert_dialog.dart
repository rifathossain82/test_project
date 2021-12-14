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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: FloatingActionButton(
          onPressed: (){
            AlertDialog alertDialog=new AlertDialog(
              title: Text('Confirm Message'),
              content: Text('Are you want to Exit?'),
              actions: [FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Yes'))],
            );
            showDialog(context: context, builder: (BuildContext context){return alertDialog;});
          },
          child: Text('click'),
        ),
      ),
    );
  }
}
