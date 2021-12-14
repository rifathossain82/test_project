import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:test_project/Bottom_navigationBar/Home_page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      title: '',
      home: AnimatedSplashScreen(
        splash: Image.asset('images/todo_icon.png'),
        nextScreen: Home_page(),
        duration: 2000,
        backgroundColor: Colors.blueGrey,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
