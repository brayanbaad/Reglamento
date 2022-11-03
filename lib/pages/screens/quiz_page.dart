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
            color: primarycolor,
            icon: Icons.quiz,
            text: 'Examen I',
            onPressed: () => Navigator.pushNamed(context, '/examen1'),
          ),
          ButtonRoundedQuiz(
            color: primarycolor,
            icon: Icons.quiz,
            text: 'Examen II',
            onPressed: () => Navigator.pushNamed(context, '/examen2'),
          ),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.quiz,
              text: 'Examen III',
              onPressed: () => Navigator.pushNamed(context, '/examen3')),
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.quiz,
              text: 'Examen IV',
              onPressed: () => Navigator.pushNamed(context, '/examen4')),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.quiz,
              text: 'Examen V',
              onPressed: () => Navigator.pushNamed(context, '/examen5')),
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.quiz,
              text: 'Examen VI',
              onPressed: () => Navigator.pushNamed(context, '/examen6')),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.quiz,
              text: 'Examen VII',
              onPressed: () => Navigator.pushNamed(context, '/examen7')),
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.quiz,
              text: 'Examen VIII',
              onPressed: () => Navigator.pushNamed(context, '/examen8')),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.quiz,
              text: 'Examen IX',
              onPressed: () => Navigator.pushNamed(context, '/examen9')),
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.list_rounded,
              text: 'Estudio De Casos',
              onPressed: () {})
        ]),
      ],
    );
  }
}
