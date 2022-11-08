import 'package:flutter/material.dart';

class Examen3Cap extends StatefulWidget {
  Examen3Cap({Key? key}) : super(key: key);

  @override
  State<Examen3Cap> createState() => _Examen3CapState();
}

class _Examen3CapState extends State<Examen3Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 3",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 3"),
      ),
    );
  }
}
