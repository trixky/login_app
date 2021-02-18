import 'package:flutter/material.dart';
import './signup-page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'login_page',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.blue[200],
              Colors.blue[700],
              Colors.blue[900],
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello World'),
              Text('Hello World'),
              Text('Hello World'),
              Text('Hello World'),
            ],
          ),
        ),
      ),
    );
  }
}
