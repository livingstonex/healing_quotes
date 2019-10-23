import 'package:flutter/material.dart';

class QodCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 650, height: 330,
      padding: EdgeInsets.only(bottom: 10, top: 0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(243, 239, 239, 0.5),
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [Colors.deepPurple, Colors.deepPurpleAccent, Colors.white]),
      ),
    );
  }
}
