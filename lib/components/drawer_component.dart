import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/views/credits_view.dart';
import 'package:twenty_one_mining/views/register_view.dart';
import 'package:twenty_one_mining/views/welcome_view.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerComponent extends StatelessWidget {
  final StorageManager storageManager = new StorageManager();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(48, 201, 114, 1.0),
            ),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Editar info'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegisterView(
                          storageManager: new StorageManager(),
                        )),
              );
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.close),
          //   title: Text('Cerrar'),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Limpiar Datos'),
            onTap: () {
              storageManager.delete('language');
              storageManager.delete('avatar');
              storageManager.delete('name');
              storageManager.delete('progress');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeView()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Ir a SME UNC'),
            onTap: () {
              _launchURL();
            },
          ),
          ListTile(
            leading: Icon(Icons.alternate_email),
            title: Text('Créditos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreditsView()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Salir'),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'http://smeunc.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
