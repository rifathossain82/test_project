import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/Data_Firebase/message.dart';
import 'package:test_project/Data_Firebase/message_dao.dart';
import 'package:test_project/Data_Firebase/message_widget.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(
      MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Project'),
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

TextEditingController message_controller=new TextEditingController();
Message_dao message_dao=new Message_dao();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: message_controller,
                    decoration: InputDecoration(
                        hintText: 'Enter Name'
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    createRecord();
                  },
                  child: Icon(CupertinoIcons.arrow_right_circle_fill))
            ],
          ),
          SizedBox(height:30,),
          getMessageList(),
        ],
      ),
    );
  }
}

void createRecord(){
  final message=Message(message_controller.text, DateTime.now());
  message_dao.saveMessage(message);
  message_controller.clear();
}

Widget getMessageList(){
  return Expanded(
      child: FirebaseAnimatedList(
        query:message_dao.getMessageQuery(),
        itemBuilder: (context,snapshot,animation,index){
          final json=snapshot.value as Map<dynamic,dynamic>;
          final message=Message.formJson(json);
          return Message_widget(message.text, message.date);
        },
      ));
}
