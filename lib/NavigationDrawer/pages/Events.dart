import 'package:flutter/material.dart';
import 'package:test_project/NavigationDrawer/Widget/NavigationDrawer.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  static const String routeName='/Events';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: Center(
        child: Text('This is Events Page'),
      ),
      drawer:NavigationDrawer(),
    );
  }
}
