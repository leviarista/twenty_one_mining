import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';
import 'package:twenty_one_mining/entities/environment_Item.dart';
import 'package:twenty_one_mining/repositories/environment_repository.dart';
import 'package:twenty_one_mining/views/quiz_view.dart';

class ScenarioItemsView extends StatefulWidget {
  late final String scenario;

  ScenarioItemsView({Key? key, required this.scenario}) : super(key: key);

  @override
  ScenarioItemsViewState createState() => ScenarioItemsViewState();
}

class ScenarioItemsViewState extends State<ScenarioItemsView> {
  String initialMessage = '';
  late String selectedInfo;
  late final List<EnvironmentItem> items;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    setState(() {
      selectedInfo = initialMessage;
      items = EnvironmentRepository().getEnvironmentItems(this.widget.scenario);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

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
                      children: items
                          .map(
                            (item) =>
                            Positioned(
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
                                  setState(() {
                                    selectedInfo = item.message ?? initialMessage;
                                  });
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
                          // color: Colors.white,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        const Radius.circular(20.0),
                                      )),
                                  padding: EdgeInsets.all(15),
                                  child: Text(
                                    selectedInfo,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(0, 130, 61, 1.0),
                                    // onPrimary: Color.fromRGBO(254, 200, 0, 1.0),
                                    onPrimary: Colors.white,
                                    shape: StadiumBorder(),
                                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => QuizView(scenario: this.widget.scenario),
                                        ),
                                    );
                                  },
                                  child: Text('CONTINUAR'),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ))));
  }
}
