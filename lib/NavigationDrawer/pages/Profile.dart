import 'package:flutter/material.dart';
import 'package:test_project/NavigationDrawer/Widget/NavigationDrawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  static const String routeName='/Profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('This is Profile Page'),
      ),
      drawer:NavigationDrawer(),
    );
  }
}
