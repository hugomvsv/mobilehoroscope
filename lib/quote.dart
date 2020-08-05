import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Quote> getQuote(String url2,String url4) async {

  String url = ('http://horoscope-api.herokuapp.com/horoscope/$url4/$url2');

  final response = await http.get(url, headers: {"Accept": "application/json"});

  if (response.statusCode == 200) {
    return Quote.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}


class Quote {

  final String horoscope;

  Quote({this.horoscope});

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(horoscope: json['horoscope']);
  }
}

