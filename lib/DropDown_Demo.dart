import 'package:flutter/material.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.only(left: 16,right: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 1),
                borderRadius: BorderRadius.circular(15)
            ),
            child: DropdownButton(
              hint: Text('Select one'),
              dropdownColor: Colors.white,
              underline: SizedBox(),
              isExpanded: true,
              value: value_choose,
              onChanged: (value){
                setState(() {
                  value_choose=value;
                });
              },
              items: list_item.map((e) =>
                  DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  )).toList(),),
          ),
        ),
      ),
    );
  }
}
