import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Test Project",
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Test Project'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height_=200.0;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                highlightColor: Colors.grey.withOpacity(0.3),
                splashColor: Colors.grey.withOpacity(0.3),
                hoverColor: Colors.grey.withOpacity(0.3),
                customBorder: StadiumBorder(),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border,color: Colors.red,),
                      SizedBox(width: 8,),
                      Text('27 k',style: TextStyle(color: Colors.red),)
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                highlightColor: Colors.grey.withOpacity(0.3),
                splashColor: Colors.grey.withOpacity(0.3),
                hoverColor: Colors.grey.withOpacity(0.3),
                customBorder: StadiumBorder(),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                  child: Row(
                    children: [
                      Icon(Icons.share,color: Colors.green,),
                      SizedBox(width: 8,),
                      Text('32.5 k',style: TextStyle(color: Colors.green),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
