import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/views/level_selector_view.dart';

class SuccessView extends StatefulWidget {
  late final String message;

  SuccessView({Key? key, required this.message}) : super(key: key);

  @override
  SuccessViewState createState() => SuccessViewState();
}

class SuccessViewState extends State<SuccessView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarComponent(),
      drawer: DrawerComponent(),
      backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        child: Container(
          height: size.height - 25,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.widget.message.toUpperCase(),
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Image.asset('assets/images/instructions_woman.png'),
                  ),
                  Visibility(
                    visible: this.widget.message.toUpperCase().contains('TODOS LOS NIVELES'),
                    child: Image.asset('assets/images/gold_bars.png'),
                  ),
                  Image.asset('assets/images/success_image.png'),
                  Visibility(
                    visible: this.widget.message.toUpperCase().contains('TODOS LOS NIVELES'),
                    child: Image.asset('assets/images/trophy.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Image.asset('assets/images/instructions_man.png'),
                  ),
                ],
              ),
              Visibility(
                visible: !this.widget.message.toUpperCase().contains('TODOS LOS NIVELES'),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(left: 100, right: 100, top: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            backgroundColor: Color.fromRGBO(209, 225, 240, .5),
                            color: Color.fromRGBO(240, 127, 65, 1),
                            value: 1,
                            minHeight: 20,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(left: 100, right: 100, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('                  '),
                            Image.asset('assets/images/gold_bar_1.png'),
                            Image.asset('assets/images/gold_bar_2.png'),
                            Image.asset('assets/images/gold_bar_3.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LevelSelectorView(storageManager: new StorageManager())),
                    );
                  },
                  child: Text('CONTINUAR'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
