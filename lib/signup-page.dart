import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Seconde page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Retour'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
