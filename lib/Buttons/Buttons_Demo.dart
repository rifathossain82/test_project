import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var text='Off';
  var status=false;
  var value_choose;
  List list_item=['Civil','Power','Computer','Electrical','Mechanical','Architecture'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue,Colors.black],
                stops: [0.5,0.1],
              )
          ),
        ),
      ),
      body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 200,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  onPressed: (){},
                  color: Colors.blue,
                  child: Text('Click me',style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              FlutterSwitch(
                width: 125.0,
                height: 55.0,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                    if(status==false){
                      text="Off";
                    }
                    else{
                      text="On";
                    }
                  });
                },
              ),
              SizedBox(height: 16,),
              Text('Wifi ${text}'),
              SizedBox(height: 16,),
              FlatButton(
                onPressed: (){},
                child: Icon(Icons.add),
                color: Colors.orange,
              ),
              SizedBox(height: 16,),
              OutlineButton(
                onPressed: (){},
                child: Text('Click me'),
              ),
              SizedBox(height: 16,),
              RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.zero,
                onPressed: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
                  child: Text('Click me',style: TextStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: [Colors.blue,Colors.cyanAccent]

                      )
                  ),
                ),),


            ],
          )
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: Text('Add here'),
        icon: Icon(Icons.add),

      ),
    );
  }
}
