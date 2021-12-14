import 'package:firebase_database/firebase_database.dart';
import 'package:test_project/Data_Firebase/message.dart';

class Message_dao{
  final DatabaseReference database_ref=FirebaseDatabase.instance.reference().child('message');

  void saveMessage(Message message){
    database_ref.push().set(message.toJson());
  }

  Query getMessageQuery(){
    return database_ref;
  }
}