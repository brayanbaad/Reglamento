import 'package:flutter/material.dart';

import '../constants.dart';

class Examen1Cap extends StatefulWidget {
  Examen1Cap({Key? key}) : super(key: key);

  @override
  State<Examen1Cap> createState() => _Examen1CapState();
}

class _Examen1CapState extends State<Examen1Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(" DE LOS ESTUDIANTES",
                style: TextStyle(color: colortitulo, fontSize: 16)),
            elevation: 0,
            centerTitle: true,
            backgroundColor: primarycolor),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(12)),
            ],
          ),
        ));
  }
}
