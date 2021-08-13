import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';
import 'package:twenty_one_mining/entities/level.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/repositories/level_repository.dart';
import 'package:twenty_one_mining/views/scenario_view.dart';
import 'package:twenty_one_mining/views/scenarios/level01/dormitorio_main_view.dart';

class LevelSelectorView extends StatefulWidget {
  final StorageManager storageManager;

  LevelSelectorView({Key? key, required this.storageManager}) : super(key: key);

  @override
  _LevelSelectorViewState createState() => _LevelSelectorViewState();
}

class _LevelSelectorViewState extends State<LevelSelectorView> {
  String name = '', avatar = '';
  bool showEnvs = false;
  final List<Level> levels = LevelRepository().getLevels();
  late Level selectedLevel;

  @override
  void initState() {
    super.initState();
    widget.storageManager.read('name').then((value) {
      setState(() {
        this.name = value;
      });
    });
    widget.storageManager.read('avatar').then((value) {
      setState(() {
        this.avatar = value;
      });
    });
    selectedLevel = levels[0];
  }

  void setShowEnvs(value) {
    setState(() {
      this.showEnvs = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      drawer: DrawerComponent(),
      backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
      body: Column(children: <Widget>[
        Container(
            // width: double.infinity,
            // height: double.infinity,
            alignment: Alignment.center,
            child: Container(
                // height: double.infinity,
                // color: Colors.red,
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(this.avatar),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '¡Hola!',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    this.name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 70.0,
                            height: 70.0,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: Color.fromRGBO(0, 130, 61, 1.0),
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Level',
                                  style: TextStyle(
                                    color: Color.fromRGBO(254, 200, 0, 1.0),
                                  ),
                                ),
                                Text(
                                  '0' + this.selectedLevel.index.toString(),
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(254, 200, 0, 1.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Elige tu escenario',
                        style: TextStyle(
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          enableInfiniteScroll: false,
                          height: 250.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              this.selectedLevel = levels[index];
                            });
                          }),
                      items: levels.map((level) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    const Radius.circular(20.0),
                                  )),
                              child: OutlinedButton(
                                onPressed: () => {setShowEnvs(!showEnvs)},
                                style: OutlinedButton.styleFrom(
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      level.name,
                                      style: TextStyle(
                                        height: 3,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color.fromRGBO(48, 201, 114, 1.0),
                                      ),
                                    ),
                                    new Expanded(
                                        child: new Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(level.image),
                                    )),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ))),
        Expanded(child: Align(alignment: Alignment.bottomCenter, child: getBottomChild()))
      ]),
    );
  }

  Widget getBottomChild() {
    if (showEnvs) {
      return Container(
        height: 280,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 20),
              child: Column(
                children: [
                  Text.rich(
                    TextSpan(text: 'Elige tu Ambiente', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
                  ),
                  Column(
                    children: selectedLevel.environments
                        .map(
                          (environment) => SizedBox(
                            // height: 100, //height of button
                            width: 210, //
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(0, 130, 61, 1.0),
                                onPrimary: Color.fromRGBO(254, 200, 0, 1.0),
                                shape: StadiumBorder(),
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              ),
                              onPressed: () {
                                navigateToEnvironment(environment);
                              },
                              child: Text(environment),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            Text(
              'Tu progreso',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromRGBO(48, 201, 114, 1.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: LinearProgressIndicator(
                backgroundColor: Colors.white,
                color: Color.fromRGBO(240, 127, 65, 1),
                value: 0.33,
                minHeight: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0 barras'),
                  Text('1 barra'),
                  Text('2 barras'),
                  Text('3 barras'),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: 95,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tu progreso',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromRGBO(48, 201, 114, 1.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: LinearProgressIndicator(
                backgroundColor: Colors.white,
                color: Color.fromRGBO(240, 127, 65, 1),
                value: 0.33,
                minHeight: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0 barras'),
                  Text('1 barra'),
                  Text('2 barras'),
                  Text('3 barras'),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  void navigateToEnvironment(environment) {
    switch (environment) {
      // Metales en Casa
      case 'Dormitorio':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/dormitorio_background.png',
                  backgroundImageYellow: 'assets/images/environments/dormitorio_background_yellow.png')),
        );
        break;
      case 'Cocina':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/dormitorio_background.png',
                  backgroundImageYellow: 'assets/images/environments/dormitorio_background_yellow.png')),
        );
        break;
      case 'Sala':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/dormitorio_background.png',
                  backgroundImageYellow: 'assets/images/environments/dormitorio_background_yellow.png')),
        );
        break;
      // Metales en la Medicina
      case 'Ambulancia':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/ambulancia_background.png',
                  backgroundImageYellow: 'assets/images/environments/ambulancia_background_yellow.png')),
        );
        break;
      case 'Hospital':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/hospital_background.png',
                  backgroundImageYellow: 'assets/images/environments/hospital_background_yellow.png')),
        );
        break;
      case 'Instrumentos y Equipos':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/instrumentos_equipos_background.png',
                  backgroundImageYellow: 'assets/images/environments/instrumentos_equipos_background_yellow.png')),
        );
        break;
      // Metales en Transporte
      case 'Aéreo':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/aereo_background.png',
                  backgroundImageYellow: 'assets/images/environments/aereo_background_yellow.png')),
        );
        break;
      case 'Terrestre':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/terrestre_background.png',
                  backgroundImageYellow: 'assets/images/environments/terrestre_background_yellow.png')),
        );
        break;
      case 'Marítimo':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/maritimo_background.png',
                  backgroundImageYellow: 'assets/images/environments/maritimo_background_yellow.png')),
        );
        break;
      // Metales en Agricultura
      case 'Maquinaría':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/maquinaria_background.png',
                  backgroundImageYellow: 'assets/images/environments/maquinaria_background_yellow.png')),
        );
        break;
      case 'Herramientas':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/herramientas_background.png',
                  backgroundImageYellow: 'assets/images/environments/herramientas_background_yellow.png')),
        );
        break;
      case 'Insumos':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ScenarioView(
                  scenario: environment,
                  backgroundImage: 'assets/images/environments/insumos_background.png',
                  backgroundImageYellow: 'assets/images/environments/insumos_background_yellow.png')),
        );
        break;
      default:
        break;
    }
  }
}
