import 'dart:io';

import 'package:flutter/material.dart';

import 'main.dart';
import 'quote.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("$url1"),
        ),
        body: BodyWidget());
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget> {
  Widget actual;
  bool firstTime = true;

  @override
  Widget build(BuildContext context) {
    if (firstTime) {
      try {
        InternetAddress.lookup('http://horoscope-api.herokuapp.com')
            .then((valor) {
          if (valor.isNotEmpty && valor[0].rawAddress.isNotEmpty) {
            setState(() {
              actual = printhoroscope("today");
              firstTime = false;
            });
          }
        });
      } on SocketException {
        // if user has no internet connection
        showAlertDialog(context, "ERROR", "Please check your connection!");
      } on Exception {
        showAlertDialog(
            context, "Error", "Ups, something went wrong");
      }
    }

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () async {
                try {
                  var result = await InternetAddress.lookup(
                      'http://horoscope-api.herokuapp.com');
                  if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                    setState(() {
                      actual = printhoroscope("today");
                    });
                  }
                } on SocketException {
                  // if user has no internet connection
                  showAlertDialog(
                      context, "ERROR", "Please check your connection!");
                } on Exception {
                  showAlertDialog(
                      context, "Error", "Ups, something went wrong");
                }
              },
              child: Text(
                "Day",
                style: TextStyle(color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () async {
                try {
                  var result = await InternetAddress.lookup(
                      'http://horoscope-api.herokuapp.com');
                  if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                    setState(() {
                      actual = printhoroscope("week");
                    });
                  }
                } on SocketException {
                  // if user has no internet connection
                  showAlertDialog(
                      context, "ERROR", "Please check your connection!");
                } on Exception {
                  showAlertDialog(
                      context, "Error", "Ups, something went wrong");
                }
              },
              child: Text(
                "Week",
                style: TextStyle(color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () async {
                try {
                  var result = await InternetAddress.lookup(
                      'http://horoscope-api.herokuapp.com');
                  if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                    setState(() {
                      actual = printhoroscope("month");
                    });
                  }
                } on SocketException {
                  // if user has no internet connection
                  showAlertDialog(
                      context, "ERROR", "Please check your connection!");
                } on Exception {
                  showAlertDialog(
                      context, "Error", "Ups, something went wrong");
                }
              },
              child: Text(
                "Month",
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ],
        ),
        //here
        actual != null ? actual : Text("")
      ],
    );
  }
}

Widget printhoroscope(String time) {
  return Center(
      child: FutureBuilder<Quote>(
          future: getQuote(url1, time),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Text(snapshot.data.horoscope),
                    ],
                  ));
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          }));
}

showAlertDialog(BuildContext context, String title, String subtitle) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(subtitle),
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
