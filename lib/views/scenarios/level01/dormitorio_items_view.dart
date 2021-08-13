import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';
import 'package:twenty_one_mining/entities/environment_Item.dart';

class DormitorioItemsView extends StatefulWidget {
  @override
  DormitorioItemsViewState createState() => DormitorioItemsViewState();
}

class DormitorioItemsViewState extends State<DormitorioItemsView> {
  String selectedInfo = 'Mensaje sobre elemento selecionado';
  final items = [
    EnvironmentItem(1, 'assets/images/environments/dormitorio_item (1).png', 'stack', 5, null, null, 15, null),
    EnvironmentItem(2, 'assets/images/environments/dormitorio_item (2).png', 'stack', 15, null, null, 100, null),
    EnvironmentItem(3, 'assets/images/environments/dormitorio_item (3).png', 'center', 90, null, null, null, null),
    EnvironmentItem(4, 'assets/images/environments/dormitorio_item (4).png', 'center', 140, null, null, 50, null),
    EnvironmentItem(5, 'assets/images/environments/dormitorio_item (5).png', 'center', 140, 50, null, null, null),
    EnvironmentItem(6, 'assets/images/environments/dormitorio_item (6).png', 'center', 200, null, null, null, null),
    EnvironmentItem(7, 'assets/images/environments/dormitorio_item (7).png', 'center', 200, null, null, 50, null),
    EnvironmentItem(8, 'assets/images/environments/dormitorio_item (8).png', 'center', 200, 50, null, null, null),
    EnvironmentItem(9, 'assets/images/environments/dormitorio_item (9).png', 'center', null, null, 10, 15, null),
    EnvironmentItem(10, 'assets/images/environments/dormitorio_item (10).png', 'center', null, null, 10, null, null),
    EnvironmentItem(11, 'assets/images/environments/dormitorio_item (11).png', 'center', null, 15, 10, null, null),
    EnvironmentItem(12, 'assets/images/environments/dormitorio_item (12).png', 'center', null, 70, 0, null, null),
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        // appBar: AppBarComponent(),
        drawer: DrawerComponent(),
        backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Container(
                height: size.height - 50,
                // color: Colors.red,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: size.width / ((size.height - 100) * 2),
                  shrinkWrap: true,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children:
                          items
                              .map(
                                (item) => Positioned(
                                  top: item.top,
                                  right: item.right,
                                  bottom: item.bottom,
                                  left: item.left,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.transparent,
                                      // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                    ),
                                    onPressed: () {
                                      print('Tapped ${item.image}');
                                      // setState(() {
                                      //   selectedInfo = item.image;
                                      // });
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => DormitorioMainView()),
                                      // );
                                    },
                                    child: Image.asset(item.image),
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 25),
                        child: Container(
                            color: Colors.white,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    selectedInfo,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            )))
                  ],
                ))));
  }
}
