import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final formKey=GlobalKey<FormState>();
  var txt='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (value){
                  if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                    return 'Enter correct name';
                  }
                  else{
                    return null;
                  }
                },
                maxLength: 10,
                maxLines: 1,
                style: TextStyle(color: Colors.red),
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                maxLength: 30,
                maxLines: 1,
                style: TextStyle(color: Colors.red),
                cursorColor: Colors.red,
                validator: (value){
                  if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)){
                    return 'Enter correct email';
                  }
                  else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){
                    if(formKey.currentState!.validate()){
                      final snackbar=SnackBar(content: Text('Submitting Form'));

                      Scaffold.of(context).showSnackBar(snackbar);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Valid'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

