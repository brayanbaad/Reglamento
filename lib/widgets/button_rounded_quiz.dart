import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reglamento_estudiantil/constants.dart';

class ButtonRoundedQuiz extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final void Function() onPressed;

  ButtonRoundedQuiz({
    Key? key,
    required this.color,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 174.0,
            width: 400.0,
            margin: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 218, 218, 218)),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(text,
                    style:
                        TextStyle(color: Colors.grey.shade500, fontSize: 17)),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(icon, color: Colors.white, size: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
