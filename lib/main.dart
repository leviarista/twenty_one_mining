import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/views/level_selector_view.dart';
import 'package:twenty_one_mining/views/register_view.dart';
import 'package:twenty_one_mining/views/welcome_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '21 Mining',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: start(),
      // ),
      home: MyHomePage(
        storageManager: new StorageManager(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final StorageManager storageManager;

  MyHomePage({Key? key, required this.storageManager}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String language = '', avatar = '', name = '';

  @override
  void initState() {
    super.initState();
    widget.storageManager.read('language').then((value) {
      setState(() {
        this.language = value;
      });
    });
    widget.storageManager.read('avatar').then((value) {
      setState(() {
        this.avatar = value;
      });
    });
    widget.storageManager.read('name').then((value) {
      setState(() {
        this.name = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    if (language == 'ESPAÑOL' || language == 'ENGLISH' || language == 'QUICHWA') {
      if (avatar != '' && name != '') {
        return LevelSelectorView(storageManager: widget.storageManager);
      } else {
        return RegisterView(storageManager: widget.storageManager);
      }
    } else {
      return WelcomeView();
    }
  }
}
