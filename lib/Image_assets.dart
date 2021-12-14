

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));

}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My test App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.network('https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Go'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


/*
*********system 1 : networkImage
child: Image(
          image: NetworkImage('https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg') ,
        ),
and we can use like this
      child: Image.network('https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg'),




*********system 2 : AssetImage
        child: Image(
          image: AssetImage('assets/gulugulu.jpg') ,
        ),
we can also use like this
      child: Image.asset('assets/gulugulu.jpg'),


 */