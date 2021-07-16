import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';

class LevelSelectorView extends StatefulWidget {
  final StorageManager storageManager;

  LevelSelectorView({Key? key, required this.storageManager}) : super(key: key);

  @override
  _LevelSelectorViewState createState() => _LevelSelectorViewState();
}

class _LevelSelectorViewState extends State<LevelSelectorView> {
  String name = '', avatar = '';
  final levels = [
    'assets/images/levels/level_1.png',
    'assets/images/levels/level_2.png',
    'assets/images/levels/level_3.png',
    'assets/images/levels/level_4.png',
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
        backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Container(
                height: 600,
                // color: Colors.red,
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
                          Column(
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
                                  '01',
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
                    Text(
                      'Elige tu escenario',
                      style: TextStyle(
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(enableInfiniteScroll: false, height: 250.0),
                      items: levels.map((level) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    const Radius.circular(20.0),
                                  )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Level',
                                    style: TextStyle(
                                      color: Color.fromRGBO(254, 200, 0, 1.0),
                                    ),
                                  ),
                                  Image.asset(level),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    )
                  ],
                ))));
  }
}
