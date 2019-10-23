import 'package:flutter/material.dart';


class TopInfo extends StatelessWidget {

  final textStyle = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blueGrey );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:45.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text('WORDS THAT HEAL AND', style: textStyle,),
              new Text('MOTIVATES...', style: textStyle,),
              new Padding(padding: EdgeInsets.all(15.0)),
            ],
          )
        ],
      ),
    );
  }
}
