import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:reglamento_estudiantil/exams/examenCap2.dart';

import '../../constants.dart';
import '../../exams/examenCap1.dart';
import '../../exams/examenCap3.dart';
import '../../exams/examenCap4.dart';
import '../../exams/examenCap5.dart';
import '../../exams/examenCap6.dart';
import '../../exams/examenCap7.dart';
import '../../exams/examenCap8.dart';
import '../../exams/examenCap9.dart';
import '../../models/question.dart';
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
          title: const Text(" EXAMENES",
              style: TextStyle(color: colortitulo, fontSize: 16)),
          elevation: 0,
          centerTitle: true,
          backgroundColor: primarycolor),
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
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('preguntas-capitulo1')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final questionDocs = snapshot.data!.docs;
              final questions = questionDocs
                  .map((e) => Question.fromQueryDocumentSnapshot(e))
                  .toList();
              return ButtonRoundedQuiz(
                  color: primarycolor,
                  icon: Icons.quiz,
                  text: 'Examen I',
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Examen1Cap(
                                  totalTime: 60,
                                  questions: questions,
                                )),
                      ));
            },
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('preguntas-capitulo2')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final questionDocs = snapshot.data!.docs;
              final questions = questionDocs
                  .map((e) => Question.fromQueryDocumentSnapshot(e))
                  .toList();
              return ButtonRoundedQuiz(
                  color: primarycolor,
                  icon: Icons.quiz,
                  text: 'Examen II',
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Examen2Cap(
                                  totalTime: 60,
                                  questions: questions,
                                )),
                      ));
            },
          ),
        ]),
        TableRow(children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('preguntas-capitulo3')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final questionDocs = snapshot.data!.docs;
              final questions = questionDocs
                  .map((e) => Question.fromQueryDocumentSnapshot(e))
                  .toList();
              return ButtonRoundedQuiz(
                  color: primarycolor,
                  icon: Icons.quiz,
                  text: 'Examen III',
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Examen3Cap(
                                  totalTime: 60,
                                  questions: questions,
                                )),
                      ));
            },
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('preguntas-capitulo4')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final questionDocs = snapshot.data!.docs;
              final questions = questionDocs
                  .map((e) => Question.fromQueryDocumentSnapshot(e))
                  .toList();
              return ButtonRoundedQuiz(
                  color: primarycolor,
                  icon: Icons.quiz,
                  text: 'Examen IV',
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Examen4Cap(
                                  totalTime: 60,
                                  questions: questions,
                                )),
                      ));
            },
          ),
        ]),
        TableRow(children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('preguntas-capitulo5')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final questionDocs = snapshot.data!.docs;
              final questions = questionDocs
                  .map((e) => Question.fromQueryDocumentSnapshot(e))
                  .toList();
              return ButtonRoundedQuiz(
                  color: primarycolor,
                  icon: Icons.quiz,
                  text: 'Examen V',
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Examen5Cap(
                                  totalTime: 60,
                                  questions: questions,
                                )),
                      ));
            },
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('preguntas-capitulo6')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final questionDocs = snapshot.data!.docs;
              final questions = questionDocs
                  .map((e) => Question.fromQueryDocumentSnapshot(e))
                  .toList();
              return ButtonRoundedQuiz(
                  color: primarycolor,
                  icon: Icons.quiz,
                  text: 'Examen VI',
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Examen6Cap(
                                  totalTime: 60,
                                  questions: questions,
                                )),
                      ));
            },
          ),
        ]),
        TableRow(children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('preguntas-capitulo7')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final questionDocs = snapshot.data!.docs;
              final questions = questionDocs
                  .map((e) => Question.fromQueryDocumentSnapshot(e))
                  .toList();
              return ButtonRoundedQuiz(
                  color: primarycolor,
                  icon: Icons.quiz,
                  text: 'Examen VII',
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Examen7Cap(
                                  totalTime: 60,
                                  questions: questions,
                                )),
                      ));
            },
          ),
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.list_rounded,
              text: 'Examen VIII',
              onPressed: () {}),
        ]),
        TableRow(children: [
          ButtonRoundedQuiz(
              color: primarycolor,
              icon: Icons.list_rounded,
              text: 'Examen IX',
              onPressed: () {}),
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
