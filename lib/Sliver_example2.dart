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
            title: Icon(Icons.arrow_back),
            pinned: true,
            expandedHeight: 174,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network('https://images.template.net/wp-content/uploads/2014/11/Natural-Facebook-Cover-Photo.jpg'),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
                (context, index){
              return Card(
                child: Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/4435545454e6145006c955e938f67733-1627580748022/07f96381-6791-46c4-a8ae-c302f71e59d5.JPG'),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(width: 20,),
                        Text('Rifat Hossain')
                      ],

                    ),
                  ),
                ),
              );
            },
            childCount: 20,
          )),
        ],
      ),

    );
  }
}
