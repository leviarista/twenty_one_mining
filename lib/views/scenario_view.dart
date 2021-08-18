import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/views/level_selector_view.dart';
import 'package:twenty_one_mining/views/scenario_items_view.dart';
import 'package:twenty_one_mining/views/scenarios/level01/dormitorio_items_view.dart';

class ScenarioView extends StatefulWidget {
  late final String scenario;
  late final String backgroundImage;
  late final String backgroundImageYellow;

  ScenarioView({Key? key, required this.scenario, required this.backgroundImage, required this.backgroundImageYellow}) : super(key: key);

  @override
  ScenarioViewState createState() => ScenarioViewState();
}

class ScenarioViewState extends State<ScenarioView> {
  int taps = 0;
  late String backgroundImage;

  @override
  void initState() {
    super.initState();
    setState(() {
      backgroundImage = this.widget.backgroundImage;
    });
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  void updateUI() {
    setState(() {
      taps++;
    });
    if (taps == 1) {
      setState(() {
        backgroundImage = this.widget.backgroundImageYellow;
      });
    } else if (taps >= 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScenarioItemsView(scenario: this.widget.scenario)),
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
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(50),
                child: GestureDetector(
                  onTap: () => updateUI(),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(backgroundImage),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: taps == 0,
                child: Positioned(
                  bottom: 25,
                  left: 25,
                  // right: 10.0,
                  child: Image.asset('assets/images/instructions_1.png'),
                ),
              ),
              Visibility(
                visible: taps >= 1,
                child: Positioned(
                  bottom: 25,
                  right: 25,
                  // right: 10.0,
                  child: Image.asset('assets/images/instructions_2.png'),
                ),
              ),
              Positioned(
                top: 50,
                right: 50,
                // right: 10.0,
                child: Text(
                  this.widget.scenario.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
