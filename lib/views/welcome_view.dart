import 'package:flutter/material.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_componennt.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/views/register_view.dart';

class WelcomeView extends StatelessWidget {
  final StorageManager storageManager = new StorageManager();
  static const languages = [
    const Language('ESPAÑOL', 38),
    const Language('ENGLISH', 40),
    const Language('QUICHWA', 36),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      drawer: DrawerComponent(),
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
                TextSpan(text: 'WELCOME', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: Colors.white)),
              ),
              Image.asset('assets/images/twenty_one_mining.png'),
              Image.asset('assets/images/stark_team.png'),
              Text.rich(
                TextSpan(text: 'Elige tu idioma', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 3, color: Colors.white)),
              ),
              Column(
                children: languages
                    .map(
                      (language) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 130, 61, 1.0),
                          onPrimary: Color.fromRGBO(254, 200, 0, 1.0),
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(horizontal: language.horizontalPadding, vertical: 10),
                        ),
                        onPressed: () {
                          storageManager.write('language', language.name);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterView(
                                      storageManager: new StorageManager(),
                                    )),
                          );
                        },
                        child: Text(language.name),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Language {
  final String name;
  final double horizontalPadding;

  const Language(this.name, this.horizontalPadding);
}
