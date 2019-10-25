import 'package:flutter/material.dart';
import 'package:quotes/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';


class RefreshAndShare extends StatefulWidget {
  @override
  _RefreshAndShareState createState() => _RefreshAndShareState();
}

class _RefreshAndShareState extends State<RefreshAndShare> {

  String quote;
  String author;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new InkWell(
            onTap: () async{
              print("meeee");
             var res = await CallApi().getQod();
             var body = json.decode(res.body);

             //print(body['contents']['quotes'][0]['quote']);
             if(body['success']['total'] == 1){
               //save qod in shared preference
               SharedPreferences storage = await SharedPreferences.getInstance();
               storage.setString('qod', body['contents']['quotes'][0]['quote']);
               storage.setString('author', body['contents']['quotes'][0]['author']);
             }else{
               print('Sorry, Please connect your phone to the internet! Thank You.');
             }



            },
            child: new Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                width: 80, height: 80,
                child: new Card(
                  color: Colors.white70,
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0) ),
                  child: new Center(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                            SizedBox(height: 10.0,),
                            Text('Refresh', style: TextStyle(fontStyle: FontStyle.italic, letterSpacing: 2.0),),
                            Icon(Icons.refresh, size: 20.0, color: Colors.blueAccent,)
                          ]
                      )
                  ),
                ),
              ),
          ),
          SizedBox(width: 20,),
          new Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 80, height: 80,
            child: new Card(
              color: Colors.white70,
              elevation: 1.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0) ),
              child: new Center(
                  child: new Icon(Icons.reply_all, textDirection: TextDirection.rtl, color: Colors.blueAccent,),
              ),
            ),
          ),

        ],

      ),
    );
  }
}
