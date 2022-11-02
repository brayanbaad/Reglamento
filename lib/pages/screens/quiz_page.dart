import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants.dart';
import '../../widgets/button_rounded_quiz.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _botonesRedondeados(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _botonesRedondeados(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          ButtonRoundedQuiz(
            color: Color.fromARGB(255, 91, 167, 230),
            icon: Icons.people_alt,
            text: 'Capitulo I',
            onPressed: () => Navigator.pushNamed(context, '/examen1'),
          ),
          ButtonRoundedQuiz(
            color: Color.fromARGB(255, 212, 129, 226),
            icon: Icons.people_alt,
            text: 'Capitulo II',
            onPressed: () => Navigator.pushNamed(context, '/examen2'),
          ),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: Color.fromARGB(255, 132, 176, 212),
              icon: Icons.people_alt,
              text: 'Capitulo III',
              onPressed: () => Navigator.pushNamed(context, '/examen3')),
          ButtonRoundedQuiz(
              color: Colors.purpleAccent,
              icon: Icons.people_alt,
              text: 'Capitulo IV',
              onPressed: () => Navigator.pushNamed(context, '/examen4')),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: Colors.purpleAccent,
              icon: Icons.people_alt,
              text: 'Capitulo V',
              onPressed: () => Navigator.pushNamed(context, '/examen5')),
          ButtonRoundedQuiz(
              color: Color.fromARGB(255, 212, 170, 107),
              icon: Icons.list_alt,
              text: 'Capitulo VI',
              onPressed: () => Navigator.pushNamed(context, '/examen6')),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: Colors.blueAccent,
              icon: Icons.list_rounded,
              text: 'Capitulo VII',
              onPressed: () => Navigator.pushNamed(context, '/examen7')),
          ButtonRoundedQuiz(
              color: Colors.green,
              icon: Icons.list_alt,
              text: 'Capitulo VIII',
              onPressed: () => Navigator.pushNamed(context, '/examen8')),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: Colors.blueAccent,
              icon: Icons.list_rounded,
              text: 'Capitulo IX',
              onPressed: () => Navigator.pushNamed(context, '/examen9')),
          ButtonRoundedQuiz(
              color: Colors.blueAccent,
              icon: Icons.list_rounded,
              text: 'Estudio De Casos',
              onPressed: () {})
        ]),
      ],
    );
  }
}
