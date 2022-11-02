import 'package:flutter/material.dart';

class Examen4Cap extends StatefulWidget {
  Examen4Cap({Key? key}) : super(key: key);

  @override
  State<Examen4Cap> createState() => _Examen4CapState();
}

class _Examen4CapState extends State<Examen4Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 4",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 4"),
      ),
    );
  }
}
