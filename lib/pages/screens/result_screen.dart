import 'package:flutter/material.dart';

import '../../components/action_button.dart';
import '../../components/gradient_box.dart';
import '../../exams/examenCap1.dart';
import '../../models/question.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    Key? key,
    required this.score,
    required this.questions,
    required this.totalTime,
  }) : super(key: key);

  final int score;
  final List<Question> questions;
  final int totalTime;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: GradientBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Resultado:'
                '${widget.score} / ${widget.questions.length}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 40),
              ActionButton(
                title: 'Intentarlo de nuevo',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Examen1Cap(
                        totalTime: widget.totalTime,
                        questions: widget.questions,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
