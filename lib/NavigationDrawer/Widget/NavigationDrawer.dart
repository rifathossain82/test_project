import 'package:flutter/material.dart';
import 'package:test_project/NavigationDrawer/PageRoutes.dart';
import 'package:test_project/NavigationDrawer/Widget/NavigationDrawerItem.dart';

import 'NavigationDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          NavigationDrawerHeader(),
          SizedBox(height: 15,),
          NavigationDrawerItem(Icons.home, 'Home', ()=>Navigator.pushReplacementNamed(context, PageRoutes.home)),
          NavigationDrawerItem(Icons.account_circle, 'Profile', ()=>Navigator.pushReplacementNamed(context, PageRoutes.profile)),
          NavigationDrawerItem(Icons.event_note, 'Events', ()=>Navigator.pushReplacementNamed(context, PageRoutes.events)),
          Divider(),
          NavigationDrawerItem(Icons.notifications_active, 'Notifications', ()=>Navigator.pushReplacementNamed(context, PageRoutes.notification)),
          NavigationDrawerItem(Icons.contact_phone, 'Contact', ()=>Navigator.pushReplacementNamed(context, PageRoutes.contact)),
        ],
      ),
    );
  }
}
