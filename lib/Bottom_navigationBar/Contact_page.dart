import 'package:flutter/material.dart';

class Contact_page extends StatefulWidget {
  const Contact_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Contact_page> {
  var counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(child: Text('Total contacts: ${counter}',style: TextStyle(fontSize: 30),),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),

      ),
    );
  }
}
