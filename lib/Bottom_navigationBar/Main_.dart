import 'package:flutter/material.dart';
import 'package:test_project/Bottom_navigationBar/Contact_page.dart';
import 'package:test_project/Bottom_navigationBar/Home_page.dart';
import 'package:test_project/Bottom_navigationBar/Notification_page.dart';
import 'package:test_project/Bottom_navigationBar/Share_page.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var current_index=0;

  final pages=[
    Home_page(),
    Notification_page(),
    Share_page(),
    Contact_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: current_index,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 18,
        unselectedFontSize: 15,
        iconSize: 30,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        onTap: (index){
          setState(() {
            current_index=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home'),backgroundColor:Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),title: Text('Notification')),
          BottomNavigationBarItem(icon: Icon(Icons.share),title: Text('Share')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text('Contacts')),
        ],
      ),
    );
  }
}
