import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:test_project/Tab_bar/home_tab.dart';
import 'package:test_project/Tab_bar/notification_tab.dart';
import 'package:test_project/Tab_bar/share_tab.dart';
import 'package:test_project/page_pagerController/Page1.dart';
import 'package:test_project/page_pagerController/Page2.dart';
import 'package:test_project/page_pagerController/Page3.dart';
import 'package:test_project/page_pagerController/Page4.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {

  PageController controller=PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Test Project'),
            centerTitle: true,
            backgroundColor: Colors.green,
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 10,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.notifications),),
                  Tab(icon: Icon(Icons.share),),
                ]),

          ),
          body: TabBarView(
              children: [
                Home_tab(),
                notification_tab(),
                share_tab(),
              ]),
        ),
      ),
    );
  }
}
