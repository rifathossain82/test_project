import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.blue,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Test Project'),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
                (context, index){
              return Container(
                height: 50,
                color: Colors.green[100 *(index %9)],
                child: Text('Item $index'),
                alignment: Alignment.center,
              );
            },
            childCount: 20,
          )),
          SliverGrid(delegate: SliverChildBuilderDelegate(
                (context, index){
              return Container(
                height: 50,
                color: Colors.orange[100 *(index %9)],
                child: Text('Grid Item $index'),
                alignment: Alignment.center,
              );
            },
            childCount: 20,
          ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),),
        ],
      ),
    );
  }
}
