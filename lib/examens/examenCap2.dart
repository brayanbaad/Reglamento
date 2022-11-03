import 'package:flutter/material.dart';
import 'package:reglamento_estudiantil/constants.dart';

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
          title: const Text("EXAMEN CAPITULO II",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          elevation: 0,
          centerTitle: true,
          backgroundColor: primarycolor),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "¿Segun el capitulo II se pierde la calidad de estudiante cuando ?",
                      style: TextStyle(color: Colors.grey, fontSize: 17)),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromARGB(255, 255, 0, 0)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "A. Cuando no se ha completado el \n ciclo de estudios previstos.",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 0, 0),
                                fontSize: 16),
                          ),
                          Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 0, 0),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Color.fromARGB(255, 255, 0, 0))),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 16,
                            ),
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
                            "B. Por alto rendimiento académico.",
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
                        border:
                            Border.all(color: Color.fromARGB(255, 0, 201, 43)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "C. Por bajo rendimiento académico.",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 201, 43),
                                fontSize: 16),
                          ),
                          Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 201, 43),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Color.fromARGB(255, 0, 201, 43))),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            ),
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
                            "D. Cuando no se haya impuesto\n una sanción académica o\n disciplinaria de forma temporal\n y permanente que anule dicha\n calidad.",
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
