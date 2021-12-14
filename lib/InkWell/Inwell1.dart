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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 8,
                child: Container(
                    height: 100,
                    child: InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset("assets/bg_header.png",height: 100,width: 120,),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Programming',style: TextStyle(color: Colors.black54,fontSize: 22,),),
                                  SizedBox(height: 5,),
                                  Text('C, Java, C++, C#, Python, PHP, JavaScript, Dart etc.',style: TextStyle(color: Colors.black54,fontSize: 14)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 8,
                child: Container(
                    height: 100,
                    child: InkWell(
                      onTap: (){},
                      hoverColor: Colors.amber[600],
                      splashColor: Colors.white60,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset("assets/bg_header.png",height: 100,width: 120,),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Programming',style: TextStyle(color: Colors.black54,fontSize: 22,),),
                                  SizedBox(height: 5,),
                                  Text('C, Java, C++, C#, Python, PHP, JavaScript, Dart etc.',style: TextStyle(color: Colors.black54,fontSize: 14)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                )
            ),
          ),
          SizedBox(height: 30,),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: height_,
            width: height_,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: RadialGradient(
                  colors: [
                    Colors.amberAccent,
                    Colors.orange
                  ]
              ),
            ),
            child: InkWell(
              onTap: (){
                setState(() {
                  height_==200.0?height_=350.0:height_=200.0;
                });
              },

            ),
          )
        ],
      ),
    );
  }
}
