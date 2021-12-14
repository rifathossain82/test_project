import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:test_project/Hero_widget/second_page.dart';
import 'package:test_project/page_pagerController/Page1.dart';
import 'package:test_project/page_pagerController/Page2.dart';
import 'package:test_project/page_pagerController/Page3.dart';
import 'package:test_project/page_pagerController/Page4.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {

  PageController controller=PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Project'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: Hero(
                  tag: 'home',
                  child: Icon(Icons.add,size: 100,)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> second_page()));
              },
            ),
          ),
        )
    );
  }
}
