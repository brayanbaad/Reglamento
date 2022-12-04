import 'dart:convert';

import 'package:flutter/foundation.dart';

class Question {
  final String id;
  final String question;
  final List<String> answers;
  final String correctAnswer;
  Question({
    required this.id,
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  Question copyWith({
    String? id,
    String? question,
    List<String>? answers,
    String? correctAnswer,
  }) {
    return Question(
      id: id ?? this.id,
      question: question ?? this.question,
      answers: answers ?? this.answers,
      correctAnswer: correctAnswer ?? this.correctAnswer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'answers': answers,
      'correctAnswer': correctAnswer,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'],
      question: map['question'],
      answers: List<String>.from(map['answers']),
      correctAnswer: map['correctAnswer'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Question(id: $id, question: $question, answers: $answers, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Question &&
        other.id == id &&
        other.question == question &&
        listEquals(other.answers, answers) &&
        other.correctAnswer == correctAnswer;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        answers.hashCode ^
        correctAnswer.hashCode;
  }
}

List<Question> question = [
  Question(
    id: '1',
    question:
        '¿Qué pasaría si el estudiante no renueva la matricula académica?',
    answers: [
      'No podrá seguir estudiando',
      'Pierda la matricula cero',
      'Pierde la calidad estudiantil',
      'Ninguna de las anteriores '
    ],
    correctAnswer: 'Pierde la calidad estudiantil',
  ),
  Question(
    id: '2',
    question:
        'Con cual de las opciones NO se pierde la calidad del estudiante:',
    answers: [
      'Bajo rendimiento académico',
      'Estudiante libre de sanciones académica',
      'Enfermedad debidamente comprobada por el servicio médico de la universidad'
    ],
    correctAnswer: 'Estudiante libre de sanciones académica',
  ),
  Question(
    id: '3',
    question: '¿A quién va enfocado el capítulo I?',
    answers: ['Profesores', 'Administración', 'Estudiantes', 'Empleados'],
    correctAnswer: 'Estudiantes',
  ),
  Question(
    id: '4',
    question:
        '¿Es necesario estar admitido en la Universidad para poder adquirir la calidad de estudiante?',
    answers: ['Falso', 'Verdadero'],
    correctAnswer: 'Verdadero',
  ),
];
