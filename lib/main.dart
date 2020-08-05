import 'package:flutter/material.dart';

import 'second.dart';


String url1;
String url5="today";




void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  static const String _title = 'Horoscope';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyStatelessWidget(),
    );
  }
}





/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          title: const Text('Horoscope'),


          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.new_releases),
              onPressed: () {
                showAlertDialog(context);
              },
            ),


          ],
        ),
        body: BodyLayout()
    );
  }
}



class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        onTap: () {
          url1 = "Aries";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/aries.png'),
        ),
        title: Text('Aries'),
      ),
      ListTile(
        onTap: () {
          url1 = "Taurus";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/taurus.png'),
        ),
        title: Text('Taurus'),
      ),
      ListTile(
        onTap: () {
          url1 = "Gemini";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/gemini.png'),
        ),
        title: Text('Gemini'),
      ),
      ListTile(
        onTap: () {
          url1 = "Cancer";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/cancer.png'),
        ),
        title: Text('Cancer'),
      ),
      ListTile(
        onTap: () {
          url1 = "Leo";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/leo.png'),
        ),
        title: Text('Leo'),
      ),
      ListTile(
        onTap: () {
          url1 = "Virgo";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/virgo.png'),
        ),
        title: Text('Virgo'),
      ),
      ListTile(
        onTap: () {
          url1 = "Libra";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/libra.png'),
        ),
        title: Text('Libra'),
      ),
      ListTile(
        onTap: () {
          url1 = "Scorpio";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/scorpio.png'),
        ),
        title: Text('Scorpio'),
      ),
      ListTile(
        onTap: () {
          url1 = "Sagittarius";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sagitarius.png'),
        ),
        title: Text('Sagitarius'),
      ),
      ListTile(
        onTap: () {
          url1 = "Capricorn";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/capricorn.png'),
        ),
        title: Text('Capricorn'),
      ),
      ListTile(
        onTap: () {
          url1 = "Aquarius";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/aquarius.png'),
        ),
        title: Text('Aquarius'),
      ),
      ListTile(
        onTap: () {
          url1 = "Pisces";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/pisces.png'),
        ),
        title: Text('Pisces'),
      ),
    ],
  );
}

showAlertDialog(BuildContext context) {



  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Horoscope"),
    content: Text("This app give you daily, weekly and monthly horoscope."),

  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

