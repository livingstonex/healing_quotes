import 'package:flutter/material.dart';
import 'package:quotes/pages/todays_quote.dart';

 class Categories extends StatefulWidget {
   @override
   _CategoriesState createState() => _CategoriesState();
 }

 class _CategoriesState extends State<Categories> {

   var textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic, color: Colors.black87);
   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.all(4.0),
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           new Row(
             children: <Widget>[
               Expanded(
                 child: new InkWell(
                   onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: null)),
                   child: new Container(
                     alignment: AlignmentDirectional.center,
                     height: 150, width: 100,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.deepPurpleAccent.withOpacity(0.5),
                     ),
                     child: new Text('Inspire', style: textStyle,),
                   ),
                 ),
               ),

               Expanded(
                 child: new Container(
                   alignment: AlignmentDirectional.center,
                   height: 150, width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.deepPurpleAccent.withOpacity(0.5),
                   ),
                   child: new Text('Love', style: textStyle,),
                 ),
               )
             ],
           ),
              
           new Padding(padding: EdgeInsets.all(18.0)),
           new Row(
             children: <Widget>[
               Expanded(
                 child: new Container(
                   alignment: AlignmentDirectional.center,
                   height: 150, width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.deepPurpleAccent.withOpacity(0.7),
                   ),
                   child: new Text('Health', style: textStyle,),
                 ),
               ),

               Expanded(
                 child: new Container(
                   alignment: AlignmentDirectional.center,
                   height: 150, width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.deepPurpleAccent.withOpacity(0.7),
                   ),
                   child: new Text('Romantic', style: textStyle,),
                 ),
               )
             ],
           ),

           new Padding(padding: EdgeInsets.all(18.0)),
           new Row(
             children: <Widget>[
               Expanded(
                 child: new Container(
                   alignment: AlignmentDirectional.center,
                   height: 150, width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.deepPurpleAccent.withOpacity(0.7),
                   ),
                   child: new Text('Health', style: textStyle,),
                 ),
               ),

               Expanded(
                 child: new Container(
                   alignment: AlignmentDirectional.center,
                   height: 150, width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.deepPurpleAccent.withOpacity(0.7),
                   ),
                   child: new Text('Romantic', style: textStyle,),
                 ),
               )
             ],
           ),

           new Padding(padding: EdgeInsets.all(18.0)),
           new Row(
             children: <Widget>[
               Expanded(
                 child: new Container(
                   alignment: AlignmentDirectional.center,
                   height: 150, width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.deepPurpleAccent.withOpacity(0.7),
                   ),
                   child: new Text('Health', style: textStyle,),
                 ),
               ),

               Expanded(
                 child: new Container(
                   alignment: AlignmentDirectional.center,
                   height: 150, width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.deepPurpleAccent.withOpacity(0.7),
                   ),
                   child: new Text('Romantic', style: textStyle,),
                 ),
               )
             ],
           )
         ],
       ),
     );
   }
 }
