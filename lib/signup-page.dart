import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
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
              flutterIcone,
              SizedBox(height: 20),
              titleSection,
              textSection,
              inputSection,
              ButtonWidget(),
              bottomSection,
            ],
          ),
        ),
      ),
    );
  }
}

Widget flutterIcone = Container(
  height: 250,
  width: 250,
  padding: EdgeInsets.all(30),
  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
  decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 0.1),
    borderRadius: BorderRadius.circular(70),
  ),
  child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 3))
        ],
      ),
      child: Image.network(
          'https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png')),
);

Widget titleSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Flutter',
        style: GoogleFonts.exo(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
      SizedBox(width: 3),
      Text(
        'Login',
        style: GoogleFonts.exo(
            fontSize: 40,
            color: Colors.lightBlueAccent,
            fontWeight: FontWeight.w900),
      ),
    ],
  ),
);

Widget textSection = Container(
  margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
  child: Text(
    'register',
    style: GoogleFonts.exo(
      fontSize: 16,
      color: Colors.white,
    ),
  ),
);

Widget inputSection = Container(
  margin: EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: Colors.white30,
          ),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
              height: 60,
              width: 245,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.exo(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: 'login',
                      hintStyle: GoogleFonts.exo(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: Colors.white30,
          ),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: Icon(
                Icons.mail_outline,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
              height: 60,
              width: 245,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.exo(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: GoogleFonts.exo(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: Colors.white30,
          ),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
              height: 60,
              width: 245,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.exo(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: GoogleFonts.exo(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignupPage()));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      textColor: Colors.blue[900],
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Text(
        'Register'.toUpperCase(),
      ),
    );
  }
}

Widget bottomSection = Container(
  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Text('Pas encore de compte ?'),
      SignupButton(),
    ],
  ),
);

class SignupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: 90,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignupPage()));
      },
      child: Text(
        'connection'.toLowerCase(),
        style: GoogleFonts.exo(
          color: Colors.white,
        ),
      ),
    );
  }
}
