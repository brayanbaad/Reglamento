import 'package:flutter/material.dart';

class Examen6Cap extends StatefulWidget {
  Examen6Cap({Key? key}) : super(key: key);

  @override
  State<Examen6Cap> createState() => _Examen6CapState();
}

class _Examen6CapState extends State<Examen6Cap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXAMEN CAPITULO 6",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(223, 240, 106, 16),
      ),
      body: Center(
        child: Text("Examen 6"),
      ),
    );
  }
}
