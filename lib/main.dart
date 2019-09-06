import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

Widget info(IconData icon, String text) {
  return Card(
    margin: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 25.0,
    ),
    child: ListTile(
      leading: Icon(
        icon,
        color: Colors.teal,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.teal[900],
          fontFamily: 'SourceSansPro',
          fontSize: 20.0,
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/Avatar.jpg'),
              ),
              Text(
                'Chernenkov Dmitry',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0,
                ),
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: Divider(color: Colors.teal[100]),
              ),
              info(Icons.phone, '+38 667 659 90 62'),
              info(Icons.mail_outline, 'dmitrychee@gmail.com'),
            ],
          ),
        ),
      ),
    );
  }
}
