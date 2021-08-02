import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_componennt.dart';

class DormitorioMainView extends StatefulWidget {
  @override
  DormitorioMainViewState createState() => DormitorioMainViewState();
}

class DormitorioMainViewState extends State<DormitorioMainView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarComponent(),
      drawer: DrawerComponent(),
      backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
      body: GestureDetector(
        onTap: () => print('Tapped'),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/environments/dormitorio_background.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 50,
              // right: 10.0,
              child: Image.asset('assets/images/instructions_1.png'),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              // right: 10.0,
              child: Image.asset('assets/images/instructions_2.png'),
            ),
          ],
        ),
      ),
    );
  }
}
