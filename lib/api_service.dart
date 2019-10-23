import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class CallApi{
   String url = "http://quotes.rest/qod";

  getQod() async{
    return await http.get(url);
  }
  _setHeaders() => {
    'Content-type': 'application/json ',
    'Accept': 'application/json '
  };

}