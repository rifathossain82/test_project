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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Material(
              borderRadius: BorderRadius.circular(100),
              color: Colors.blueGrey[900],
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Text('Flat Button',style: TextStyle(fontSize: 24,color: Colors.white),),
                ),
                onTap: (){},
              ),
            ),
          ),
          SizedBox(height: 20,),
          Ink.image(
            image: AssetImage('assets/bg_header.png',),
            fit: BoxFit.cover,
            height: 200,
            width: 200,
            child: InkWell(
              highlightColor: Colors.blue.withOpacity(0.4),
              splashColor: Colors.green.withOpacity(0.5),
              onTap: (){},
            ),
          ),
          SizedBox(height: 20,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkResponse(
                child: Icon(Icons.add,size: 100,),
                onTap: (){},
              ),
              SizedBox(width: 20,),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue,
                  radius: 30,
                  child: Icon(Icons.add,size: 100,),
                  onTap: (){},
                ),
              ),
              SizedBox(width: 20,),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue,
                  radius: 100,
                  child: Icon(Icons.add,size: 100,),
                  onTap: (){},
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkResponse(
                splashColor: Colors.blue,
                radius: 30,
                containedInkWell: false,
                child: Icon(Icons.add,size: 100,),
                onTap: (){},
              ),
              SizedBox(width: 20,),
              InkResponse(
                splashColor: Colors.blue,
                radius: 100,
                containedInkWell: false,
                child: Icon(Icons.add,size: 100,),
                onTap: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
