import 'package:flutter/material.dart';

class Share_page extends StatefulWidget {
  const Share_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Share_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share'),
      ),
      body: Center(child: Text('Share Page',style: TextStyle(fontSize: 30),),),
    );
  }
}
