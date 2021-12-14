import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Message_widget extends StatefulWidget {

  final String text;
  final DateTime date;

  Message_widget(this.text,this.date);

  @override
  _Message_widgetState createState() => _Message_widgetState();
}

class _Message_widgetState extends State<Message_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Card(
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(widget.text),
                  Text(
                    //DateFormat('yy-MM-da, hh:mma').format(widget.date).toString(),
                    DateFormat('yy-MM-da,hh:mm').format(widget.date).toString(),
                  ),
                ],
          ),
            ),
        )
      ],
    );
  }
}
