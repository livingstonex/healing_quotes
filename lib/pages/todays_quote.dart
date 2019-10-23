import 'package:flutter/material.dart';
import 'package:quotes/widgets/qod_Circle.dart';
import 'package:quotes/widgets/refresh_and_share.dart';


class Todays_Quote extends StatefulWidget {
  @override
  _Todays_QuoteState createState() => _Todays_QuoteState();
}

class _Todays_QuoteState extends State<Todays_Quote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:  new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(height: 80,),
            QodCircle(),
            SizedBox(height: 10,),
            RefreshAndShare(),
          ],
        ),
      ),
    );
  }
}
