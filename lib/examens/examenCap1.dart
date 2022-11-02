import 'package:flutter/material.dart';

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
          title: const Text("CAPITULO I: DE LOS ESTUDIANTES",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color.fromARGB(223, 240, 106, 16),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(12)),
              Text(
                "ARTICULO 1º.- El presente Acuerdo rige para los estudiantes de la Universidad Popular del Cesar. ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Padding(padding: EdgeInsets.all(12)),
              Text(
                "ARTICULO 2º.- Para poder adquirir la calidad de estudiante de la Universidad Popular del Cesar es necesario haber sido oficialmente admitido previo el cumplimiento de los requisitos de admisión establecido en el presente Acuerdo",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Padding(padding: EdgeInsets.all(12)),
            ],
          ),
        ));
  }
}
