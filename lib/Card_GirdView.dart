import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Project'),
          centerTitle: true,
          backgroundColor: Colors.lime,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.orange,
                child: Image.asset('assets/my_pic.jpg',height: 100,width: 100,),
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.orange,
                child: Image.asset('assets/my_pic.jpg',height: 100,width: 100,),
              ),Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.orange,
                child: Image.asset('assets/my_pic.jpg',height: 100,width: 100,),
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.orange,
                child: Image.asset('assets/my_pic.jpg',height: 100,width: 100,),
              ),
            ],
          ),
        )
    );
  }
}
