import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_componennt.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/views/level_selector_view.dart';
import 'package:twenty_one_mining/views/scenarios/level01/dormitorio_items_view.dart';

class DormitorioMainView extends StatefulWidget {
  @override
  DormitorioMainViewState createState() => DormitorioMainViewState();
}

class DormitorioMainViewState extends State<DormitorioMainView> {
  int taps = 0;
  String backgroundImage = 'assets/images/environments/dormitorio_background.png';

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  void updateUI() {
    setState(() {
      taps++;
    });
    if (taps == 1) {
      setState(() {
        backgroundImage = 'assets/images/environments/dormitorio_background_yellow.png';
      });
    } else if (taps >= 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DormitorioItemsView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBarComponent(),
        drawer: DrawerComponent(),
        backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
        body: WillPopScope(
          onWillPop: () {
            SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LevelSelectorView(storageManager: new StorageManager())),
            );
            return new Future(() => false);
          },
          child: GestureDetector(
            onTap: () => updateUI(),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(backgroundImage),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: taps == 0,
                  child: Positioned(
                    bottom: 50,
                    left: 50,
                    // right: 10.0,
                    child: Image.asset('assets/images/instructions_1.png'),
                  ),
                ),
                Visibility(
                  visible: taps >= 1,
                  child: Positioned(
                    bottom: 50,
                    right: 50,
                    // right: 10.0,
                    child: Image.asset('assets/images/instructions_2.png'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
