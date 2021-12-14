import 'package:flutter/material.dart';


class second_page extends StatelessWidget {
  const second_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
      ),
      body: Center(
        child: Container(
          child: Hero(
              tag: 'home',     ///if I put same tag then icon appear in the same position otherwise icon appear at bottom
              child: Icon(Icons.camera,size: 100,)),
        ),
      ),
    );
  }
}
