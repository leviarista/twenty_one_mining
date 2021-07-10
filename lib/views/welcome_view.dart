import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: Text(""),
      //),
      backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Container(
          height: 500,
          // color: Colors.red,
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                    text: 'WELCOME',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.white)),
              ),
              Image.asset('assets/images/twenty_one_mining.png'),
              Image.asset('assets/images/stark_team.png'),
              Text.rich(
                TextSpan(
                    text: 'Elige tu idioma',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 3,
                        color: Colors.white)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0, 130, 61, 1.0),
                  onPrimary: Color.fromRGBO(254, 200, 0, 1.0),
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                ),
                onPressed: () {},
                child: const Text('ESPAÑOL'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0, 130, 61, 1.0),
                  onPrimary: Color.fromRGBO(254, 200, 0, 1.0),
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                ),
                onPressed: () {},
                child: const Text('INGLÉS'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0, 130, 61, 1.0),
                  onPrimary: Color.fromRGBO(254, 200, 0, 1.0),
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                ),
                onPressed: () {},
                child: const Text('QUECHUA'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
