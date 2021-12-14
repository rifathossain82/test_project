import 'dart:ui';

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
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                labelStyle: TextStyle(fontSize: 20,),
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.account_circle_rounded),
              ),
              keyboardType: TextInputType.text,
              maxLength: 20,
              maxLines: 1,
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
                  labelStyle: TextStyle(fontSize: 20,),
                  hintText: 'Enter your phone number',
                  prefixIcon: Icon(Icons.phone_android),
                  prefixText: '+880 '
              ),
              maxLength: 10,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 20,),
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
                suffixText: '@gmail.com ',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}

