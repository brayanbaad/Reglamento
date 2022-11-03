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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Text("¿Qué es la primera pregunta?"),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 255, 0, 0)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                        "A. Respuesta 1",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color.fromARGB(255, 255, 0, 0))),
                      )
                    ]),
                  ),
                                    Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                        "B. Respuesta 2",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey)),
                      )
                    ]),
                  ),
                                    Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 0, 201, 43)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                        "C. Respuesta 3",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color.fromARGB(255, 0, 201, 43))),
                      )
                    ]),
                  ),
                                    Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                        "D. Respuesta 4",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey)),
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
