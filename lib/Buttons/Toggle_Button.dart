import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
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
  List<bool> _selections = [false, false, false];
  List<bool> _selections1 = [false, false, false];
  List<bool> _selections2 = [false, false, false];
  List<bool> _selections3 = [false, false, false];
  var text = "";
  var status = false;
  var value_choose;
  List list_item = [
    'Civil',
    'Power',
    'Computer',
    'Electrical',
    'Mechanical',
    'Architecture'
  ];

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
                colors: [Colors.blue, Colors.black],
                stops: [0.5, 0.1],
              )),
        ),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleButtons(
                    children: <Widget>[
                      Icon(Icons.add_comment),
                      Icon(Icons.airline_seat_individual_suite),
                      Icon(Icons.add_location),
                    ],
                    isSelected: _selections,
                    onPressed: (index) {
                      setState(() {
                        _selections[index] = !_selections[index];
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  ToggleButtons(
                    children: <Widget>[
                      Icon(Icons.add_comment),
                      Icon(Icons.airline_seat_individual_suite),
                      Icon(Icons.add_location),
                    ],
                    isSelected: _selections1,
                    onPressed: (index) {
                      setState(() {
                        for (int buttonIndex = 0;
                        buttonIndex < _selections1.length;
                        buttonIndex++) {
                          if (buttonIndex == index) {
                            _selections1[buttonIndex] = true;
                          } else {
                            _selections1[buttonIndex] = false;
                          }
                        }
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  ToggleButtons(
                    children: <Widget>[
                      Icon(Icons.add_comment),
                      Icon(Icons.airline_seat_individual_suite),
                      Icon(Icons.add_location),
                    ],
                    isSelected: _selections2,
                    onPressed: (index) {
                      setState(() {
                        for (int buttonIndex = 0; buttonIndex < _selections2.length; buttonIndex++) {
                          if (buttonIndex == index) {
                            _selections2[buttonIndex] = !_selections2[buttonIndex];
                          } else {
                            _selections2[buttonIndex] = false;
                          }
                        }
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  ToggleButtons(
                    children: <Widget>[
                      Icon(Icons.add_comment),
                      Icon(Icons.airline_seat_individual_suite),
                      Icon(Icons.add_location),
                    ],
                    isSelected: _selections3,
                    onPressed: (index) {
                      int count = 0;
                      _selections3.forEach((bool val) {
                        if (val) count++;
                      });

                      if (_selections3[index] && count < 2)
                        return;

                      setState(() {
                        _selections3[index] = !_selections3[index];
                      });
                    },
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Text(text),
        ]),
      ),
    );
  }
}
