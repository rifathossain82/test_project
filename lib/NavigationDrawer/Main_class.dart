import 'package:flutter/material.dart';
import 'package:test_project/NavigationDrawer/PageRoutes.dart';
import 'package:test_project/NavigationDrawer/pages/Contacts.dart';
import 'package:test_project/NavigationDrawer/pages/Events.dart';
import 'package:test_project/NavigationDrawer/pages/Home.dart';
import 'package:test_project/NavigationDrawer/pages/Notifications.dart';
import 'package:test_project/NavigationDrawer/pages/Profile.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        PageRoutes.home:(context)=> Home(),
        PageRoutes.profile:(context)=> Profile(),
        PageRoutes.events:(context)=> Events(),
        PageRoutes.notification:(context)=> Notifications(),
        PageRoutes.contact:(context)=> Contact(),
      },
    );
  }
}
