import 'package:flutter/material.dart';

class Examen8Cap extends StatefulWidget {
  Examen8Cap({Key? key}) : super(key: key);

  @override
  State<Examen8Cap> createState() => _Examen8CapState();
}

class _Examen8CapState extends State<Examen8Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 8",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 8"),
      ),
    );
  }
}
