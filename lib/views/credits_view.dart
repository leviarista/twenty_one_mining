import 'package:flutter/material.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';

class CreditsView extends StatefulWidget {
  CreditsView({Key? key}) : super(key: key);

  @override
  _CreditsViewState createState() => _CreditsViewState();
}

class _CreditsViewState extends State<CreditsView> {
  final members = [
    'Portal Valdivia, Marco',
    'Sánchez Cacho, Edward',
    'Segobia Campos, Yanina',
    'Mujica Cabrera, José',
    'Martínez Gonzales, Patty',
  ];

  final developers = ['Leví Arista'];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
          alignment: Alignment.center,
          child: Container(
            height: size.height - 150,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/twenty_one_mining.png'),
                Image.asset('assets/images/stark_team.png'),
                Text(
                  'Integrantes del Equipo',
                  style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color.fromRGBO(254, 200, 0, 1.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15.0),
                  child: Column(
                    children: this
                        .members
                        .map(
                          (member) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              member,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                // Text(
                //   'Desarrolladores',
                //   style: TextStyle(
                //     height: 2,
                //     fontWeight: FontWeight.w900,
                //     fontSize: 20,
                //     color: Color.fromRGBO(254, 200, 0, 1.0),
                //   ),
                // ),
                // Container(
                //   child: Column(
                //     children: this
                //         .developers
                //         .map(
                //           (developer) => Padding(
                //             padding: EdgeInsets.symmetric(vertical: 5.0),
                //             child: Text(
                //               developer,
                //               style: TextStyle(
                //                 color: Colors.white,
                //               ),
                //             ),
                //           ),
                //         )
                //         .toList(),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Ⓒ 2021. SME UNC.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
