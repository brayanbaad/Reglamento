import 'package:flutter/material.dart';

class Examen9Cap extends StatefulWidget {
  Examen9Cap({Key? key}) : super(key: key);

  @override
  State<Examen9Cap> createState() => _Examen9CapState();
}

class _Examen9CapState extends State<Examen9Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 9",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 9"),
      ),
    );
  }
}
