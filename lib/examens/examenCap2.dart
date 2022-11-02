import 'package:flutter/material.dart';

class Examen2Cap extends StatefulWidget {
  Examen2Cap({Key? key}) : super(key: key);

  @override
  State<Examen2Cap> createState() => _Examen2CapState();
}

class _Examen2CapState extends State<Examen2Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 2",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 2"),
      ),
    );
  }
}
