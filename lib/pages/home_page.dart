import 'package:flutter/material.dart';
import 'package:quotes/widgets/TopInfo.dart';
import 'package:quotes/widgets/categories.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/nature2.png",),
            fit: BoxFit.cover,
            )
          ),
          padding: EdgeInsets.all(10.0),
          child: new ListView(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TopInfo(),
              Categories(),
            ],
          ),
      ),
    );
  }
}