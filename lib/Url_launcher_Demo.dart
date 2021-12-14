import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: Center(
        child: RaisedButton(onPressed: () {
          _urlLauncher();
        },
          child: Text('Click'),),
      ),
    );
  }
}

_urlLauncher()async{
  var url='https://www.youtube.com/watch?v=KktvkHovfmg';
  if(await canLaunch(url)){
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String,String>{'my_header_key':'my_header_value'},
      enableJavaScript: true,
    );
  }
}
