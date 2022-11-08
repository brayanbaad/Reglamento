import 'package:flutter/material.dart';

class Examen7Cap extends StatefulWidget {
  Examen7Cap({Key? key}) : super(key: key);

  @override
  State<Examen7Cap> createState() => _Examen7CapState();
}

class _Examen7CapState extends State<Examen7Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 7",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 7"),
      ),
    );
  }
}
