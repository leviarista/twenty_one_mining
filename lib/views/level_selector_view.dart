import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_componennt.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';

class LevelSelectorView extends StatefulWidget {
  final StorageManager storageManager;

  LevelSelectorView({Key? key, required this.storageManager}) : super(key: key);

  @override
  _LevelSelectorViewState createState() => _LevelSelectorViewState();
}

class _LevelSelectorViewState extends State<LevelSelectorView> {
  String name = '', avatar = '';
  String selectedLevel = '01';
  final levels = [
    Level(1, 'Metales en Casa', 'assets/images/levels/level_1.png'),
    Level(2, 'Metales en la Medicina', 'assets/images/levels/level_2.png'),
    Level(3, 'Metales en Transporte', 'assets/images/levels/level_3.png'),
    Level(4, 'Metales en Agricultura', 'assets/images/levels/level_4.png'),
  ];

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
    print('avatar: $avatar');
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
                                  this.selectedLevel,
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
                              this.selectedLevel = '0' + (index + 1).toString();
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
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Image.asset('assets/images/big_up_arrow.png'),
                    ),
                  ],
                ))),
        Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 70,
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
                          fontSize: 20,
                          color: Color.fromRGBO(48, 201, 114, 1.0),
                        ),
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Color.fromRGBO(240, 127, 65, 1),
                        value: 0.2,
                        minHeight: 20,
                      )
                    ],
                  ),
                )))
      ]),
    );
  }
}

class Level {
  final int index;
  final String name;
  final String image;

  Level(this.index, this.name, this.image);
}
