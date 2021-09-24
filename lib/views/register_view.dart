import 'package:flutter/material.dart';
import 'package:twenty_one_mining/components/app_bar_component.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/views/level_selector_view.dart';

class RegisterView extends StatefulWidget {
  final StorageManager storageManager;

  RegisterView({Key? key, required this.storageManager}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String avatar = '', name = '';
  final avatars = [
    ['assets/images/avatar_1.png', 'assets/images/avatar_2.png', 'assets/images/avatar_3.png'],
    ['assets/images/avatar_4.png', 'assets/images/avatar_5.png', 'assets/images/avatar_6.png'],
  ];

  final nameTxtController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameTxtController.dispose();
    super.dispose();
  }

  void setAvatar(String avatar) {
    setState(() {
      this.avatar = avatar;
    });
  }

  void writeInfo(String avatar, String name) {
    widget.storageManager.write('avatar', avatar);
    widget.storageManager.write('name', name);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarComponent(),
      drawer: DrawerComponent(),
      backgroundColor: Color.fromRGBO(48, 201, 114, 1.0),
      body: Container(
          // width: double.infinity,
          height: size.height - 135,
          alignment: Alignment.center,
          child: Container(
            // height: 600,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/twenty_one_mining_small.png'),
                // Image.asset('assets/images/stark_team_small.png'),
                Text.rich(
                  TextSpan(
                      text: 'Elige tu avatar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          // fontSize: 18,
                          height: 2,
                          color: Colors.white)),
                ),
                Container(
                  width: 255,
                  // height: 150,
                  alignment: Alignment.center,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: avatars[0]
                                .map((avatar) => ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shape: StadiumBorder(),
                                      shadowColor: Colors.transparent,
                                    ),
                                    onPressed: () => {setAvatar(avatar)},
                                    child: Image.asset(avatar)))
                                .toList(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: avatars[1]
                                .map((avatar) => ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shape: StadiumBorder(),
                                      shadowColor: Colors.transparent,
                                    ),
                                    onPressed: () => {setAvatar(avatar)},
                                    child: Image.asset(avatar)))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(
                      text: 'Ingresa tu nombre',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          // fontSize: 18,
                          height: 3,
                          color: Colors.white)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  width: 220,
                  child: TextField(
                    controller: nameTxtController,
                    autofocus: false,
                    decoration: InputDecoration(
                      isDense: true,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0),
                      hintText: '',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 130, 61, 1.0),
                    onPrimary: Colors.white,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  ),
                  onPressed: () {
                    if (this.avatar == '') {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Por favor, seleccione un avatar'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (nameTxtController.text.trim() == '') {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // title: const Text('Thanks!'),
                            content: Text('Por favor, ingrese un nombre'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      writeInfo(this.avatar, nameTxtController.text.trim());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LevelSelectorView(storageManager: new StorageManager())),
                      );
                    }
                  },
                  child: Text('SIGUIENTE'),
                ),
              ],
            ),
          )),
    );
  }
}

class Avatar {
  final int index;
  final String url;

  Avatar(this.index, this.url);
}
