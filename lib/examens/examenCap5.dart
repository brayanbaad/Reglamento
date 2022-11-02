import 'package:flutter/material.dart';

class Examen5Cap extends StatefulWidget {
  Examen5Cap({Key? key}) : super(key: key);

  @override
  State<Examen5Cap> createState() => _Examen5CapState();
}

class _Examen5CapState extends State<Examen5Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 5",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 5"),
      ),
    );
  }
}
