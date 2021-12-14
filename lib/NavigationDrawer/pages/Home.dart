import 'package:flutter/material.dart';
import 'package:test_project/NavigationDrawer/Widget/NavigationDrawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName='/Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('This is Home Page'),
      ),
      drawer: NavigationDrawer(),
    );
  }
}
