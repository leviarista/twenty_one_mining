import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twenty_one_mining/components/drawer_component.dart';
import 'package:twenty_one_mining/entities/quiz.dart';
import 'package:twenty_one_mining/helpers/storage_manager.dart';
import 'package:twenty_one_mining/repositories/quiz_repository.dart';
import 'package:twenty_one_mining/views/level_selector_view.dart';
import 'package:twenty_one_mining/views/scenario_items_view.dart';

class QuizView extends StatefulWidget {
  late final String scenario;

  QuizView({Key? key, required this.scenario}) : super(key: key);

  @override
  QuizViewState createState() => QuizViewState();
}

class QuizViewState extends State<QuizView> {
  late Quiz quiz;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    setState(() {
      quiz = QuizRepository().getQuiz(this.widget.scenario);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
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
                  Image.asset('assets/images/instructions_woman.png'),
                  Container(
                    alignment: Alignment.center,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          const Radius.circular(20.0),
                        )),
                    padding: EdgeInsets.all(15),
                    child: Text(
                      quiz.question,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Image.asset('assets/images/instructions_man.png'),
                ],
              ),
              GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: (size.width * 2) / ((size.height - 100)),
                  shrinkWrap: true,
                  children: quiz.options
                      .map(
                        (option) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                          child: Stack(alignment: Alignment.center, children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onPrimary: Colors.white,
                                shadowColor: Colors.transparent,
                                // shape: StadiumBorder(),
                                // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              ),
                              onPressed: () {
                                // navigateToEnvironment(environment);
                                if (quiz.answer == (quiz.options.indexOf(option) + 1)) {
                                  print('Correct answer');
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('¡Genial!'),
                                        content: Text('Respuesta correcta'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => LevelSelectorView(storageManager: new StorageManager())),
                                              );
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text('Respuesta incorrecta'),
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
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/quiz_option_${quiz.options.indexOf(option) + 1}.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 50),
                              child: Text(
                                option,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ]),
                        ),
                      )
                      .toList())
            ],
          ),
        ),
      ),
    );
  }
}
