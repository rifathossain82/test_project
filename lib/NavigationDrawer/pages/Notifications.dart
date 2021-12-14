import 'package:flutter/material.dart';
import 'package:test_project/NavigationDrawer/Widget/NavigationDrawer.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  static const String routeName='/Notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('This is Notification Page'),
      ),
      drawer:NavigationDrawer(),
    );
  }
}
