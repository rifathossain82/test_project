import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {

  final pages=[
    Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Image.asset('assets/my_pic.jpg',width: 400,height: 400,)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Rifat Hossain',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                Text('Software Developer',style: TextStyle(fontSize: 12,),),
                SizedBox(height: 5,),
                Divider(color: Colors.black,),
                Text('Hello!! I am a Software Developer. I have some Desktop and Android Apps. If Your interested to me please knock.',style: TextStyle(fontSize: 12,),),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Image.asset('assets/gulugulu.jpg',width: 400,height: 400,)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Israt Jahan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.grey[300]),),
                Text('Graphics Designer',style: TextStyle(fontSize: 12,color: Colors.grey[400]),),
                SizedBox(height: 5,),
                Divider(color: Colors.grey[400],),
                Text('Hello!! I am a Graphics Designer. I have some beautiful project. If Your interested to me please knock.',style: TextStyle(fontSize: 12,color: Colors.grey[400]),),
              ],
            ),
          ),
        ],
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: LiquidSwipe(pages: pages,),
    );
  }
}
