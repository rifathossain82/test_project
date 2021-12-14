import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: show_snackbar(),
    );
  }
}

class show_snackbar extends StatelessWidget {
  const show_snackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: (){
          final snackbar=SnackBar(content: Text('This is Snackbar'),backgroundColor: Colors.deepOrange[900],
            action: SnackBarAction(label: 'Undo', onPressed: () {  },),);

          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Text('Show'),
        color: Colors.lime,
      ),
    );
  }
}

