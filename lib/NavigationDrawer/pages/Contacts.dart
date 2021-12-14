import 'package:flutter/material.dart';
import 'package:test_project/NavigationDrawer/Widget/NavigationDrawer.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  static const String routeName='/Contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Text('This is Contact Page'),
      ),
      drawer:NavigationDrawer(),
    );
  }
}

