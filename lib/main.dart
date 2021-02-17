import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Flutter',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          title: Text("Voyage Thailande"),
          actions: [
            IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
            )
          ],
          backgroundColor: Colors.cyan,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              imageSection,
              titleSection,
              textSection,
              iconSection,
              footerTextSection,
              hotelSection,
              buttonSection,
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget imageSection = Image.network(
    'https://pullman.accor.com/destinations/country/thailand-1400x788-1.jpg');

Widget titleSection = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au paradis',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          Text(
            'Réservez votre séjour en Thailande',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      )
    ],
  ),
);

Widget textSection = Container(
  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
  child: Text(
    'La Thaïlande, en forme longue le royaume de Thaïlande, est un pays d’Asie du Sud-Est. Avant 1939, il s’appelait le royaume de Siam. Il est bordé au sud-ouest et au nord-ouest par la Birmanie, au sud par la Malaisie, au sud-est par le Cambodge et au nord-est par le Laos. Sa capitale est Bangkok et la langue officielle est le thaï et la monnaie le baht.',
    softWrap: true,
  ),
);

Widget iconSection = Container(
  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(
                Icons.hotel,
                color: Colors.cyan,
              ),
              SizedBox(height: 10),
              Text(
                'Hotels'.toUpperCase(),
                style: TextStyle(color: Colors.cyan),
              )
            ],
          )),
      Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(
                Icons.airplanemode_active,
                color: Colors.cyan,
              ),
              SizedBox(height: 10),
              Text(
                'Vols'.toUpperCase(),
                style: TextStyle(color: Colors.cyan),
              )
            ],
          )),
      Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(
                Icons.drive_eta,
                color: Colors.cyan,
              ),
              SizedBox(height: 10),
              Text(
                'Voitures'.toUpperCase(),
                style: TextStyle(color: Colors.cyan),
              )
            ],
          )),
    ],
  ),
);

Widget hotelSection = Container(
  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        margin: EdgeInsets.all(5),
        height: 120,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('images/hotel_1.jpeg'),
              repeat: ImageRepeat.repeat,
              fit: BoxFit.cover),
        ),
      ),
      Container(
        margin: EdgeInsets.all(5),
        height: 120,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('images/hotel_2.jpeg'),
              repeat: ImageRepeat.repeat,
              fit: BoxFit.cover),
        ),
      ),
    ],
  ),
);

Widget footerTextSection = Container(
  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
  child: Text(
    'C’est une monarchie constitutionnelle depuis 1932 dans laquelle le roi est officiellement le chef de l\'État, chef des Forces armées, partisan de la religion bouddhiste et défenseur de toutes les confessions.',
    softWrap: true,
  ),
);

Widget buttonSection = RaisedButton(
  onPressed: () {},
  color: Colors.cyan,
  textColor: Colors.white,
  child: Text('Voir plus de logements'),
);
