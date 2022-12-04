import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';

class Capitulo2Page extends StatefulWidget {
  Capitulo2Page({Key? key}) : super(key: key);

  @override
  State<Capitulo2Page> createState() => _Capitulo2PageState();
}

class _Capitulo2PageState extends State<Capitulo2Page> {
  CollectionReference coleccion =
      FirebaseFirestore.instance.collection('reglamento');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(207, 38, 107, 53),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      future(coleccion: coleccion),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class future extends StatelessWidget {
  const future({
    Key? key,
    required this.coleccion,
  }) : super(key: key);

  final CollectionReference<Object?> coleccion;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: coleccion.doc('capitulo2').get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          print(snapshot.data);
          if (snapshot.hasError) {
            return Text("Algo salio mal");
          }
          if (snapshot.hasData && !snapshot.data!.exists) {
            return const Text("El documento no existe");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Column(
              children: <Widget>[
                const SizedBox(height: 17),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: const Text("CAPÍTULO II: DE LA ADMISIÓN",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Image.asset(
                  "assets/estudent.png",
                  width: 200,
                ),
                const SizedBox(height: 17),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(
                        "ARTÍCULO 4°: (MODIFICADO, por el Articulo 13 del Acuerdo No 019 del 16-12-05)",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo4']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 5º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo5']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo5_a']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo5_b']}'),
                            TextSpan(
                                text: "\nc. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo5_c']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 6º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo6']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\n1. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo6_1']}'),
                            TextSpan(
                                text: "\n2. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo6_2']}'),
                            TextSpan(
                                text: "\n3. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo6_3']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO 1º: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo_art6']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 7º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo7']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\nDEFINICIÓN: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['definicion']}'),
                            TextSpan(
                                text: "\n\nINTRAFACULTAD: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['intrafacultad']}'),
                            TextSpan(
                                text: "\n\nINTERFACULTADES: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['interfacultades']}'),
                            TextSpan(
                                text: "\n\na) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['interfacultades_a']}'),
                            TextSpan(
                                text: "\nb) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['interfacultades_b']}'),
                            TextSpan(
                                text: "\nc) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['interfacultades_c']}'),
                            TextSpan(
                                text: "\nd) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['interfacultades_d']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['1paragrafo_art7']}'),
                            TextSpan(
                                text: "\n\na) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['1paragrafo_a']}'),
                            TextSpan(
                                text: "\nb) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['1paragrafo_b']}'),
                            TextSpan(
                                text: "\nc) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['1paragrafo_c']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['2paragrafo_art7']}'),
                            TextSpan(
                                text: "\n\nCONDICIONES DE APROBACIÓN: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion']}'),
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion_a']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion_b']}'),
                            TextSpan(
                                text: "\nc. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion_c']}'),
                            TextSpan(
                                text: "\nd. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion_d']}'),
                            TextSpan(text: '\n\n${data['condaprobacion2']}'),
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion2_a']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion2_b']}'),
                            TextSpan(
                                text: "\nc. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion2_c']}'),
                            TextSpan(
                                text: "\nd. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['condaprobacion2_d']}'),
                            TextSpan(text: '\n\n${data['condaprobacion3']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['3paragrafo_art7']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 8º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo8']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['1paragrafo_art8']}'),
                            TextSpan(
                                text:
                                    '\n\n(ADICIONADO, Acuerdo No 019 del 16-12-05.)',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "\n\nDEFINICIÓN: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['definicion_art8']}'),
                            TextSpan(
                                text: "\n\na) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['definicion_art8_a']}'),
                            TextSpan(
                                text: "\nb) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['definicion_art8_b']}'),
                            TextSpan(
                                text: "\nc) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['definicion_art8_c']}'),
                            TextSpan(
                                text: "\nd) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['definicion_art8_d']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['2paragrafo_art8']}'),
                            TextSpan(
                                text: "\n\n• ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['2paragrafo_art8_1']}'),
                            TextSpan(
                                text: "\n• ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['2paragrafo_art8_1']}'),
                            TextSpan(
                                text: "\n\nREQUISITOS: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['requisitos']}'),
                            TextSpan(
                                text: "\n\na) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['requisitos_a']}'),
                            TextSpan(
                                text: "\nb) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['requisitos_b']}'),
                            TextSpan(
                                text: "\nc) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['requisitos_c']}'),
                            TextSpan(
                                text: "\n\nTRÁMITE DOCUMENTAL: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['tradocumental']}'),
                            TextSpan(
                                text: "\n\n1. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['tradocumental_1']}'),
                            TextSpan(
                                text: "\n2. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['tradocumental_2']}'),
                            TextSpan(
                                text: "\n3. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['tradocumental_3']}'),
                            TextSpan(
                                text: "\n4. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['tradocumental_4']}'),
                            TextSpan(
                                text: "\n\nRECONOCIMIENTO DE ASIGNATURAS: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['recasignaturas']}'),
                            TextSpan(
                                text: "\n\na) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['recasignaturas_a']}'),
                            TextSpan(
                                text: "\nb) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['recasignaturas_b']}'),
                            TextSpan(
                                text: "\nc) ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['recasignaturas_c']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO 1: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['3paragrafo_art8']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO 2: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['4paragrafo_art8']}'),
                            TextSpan(
                                text: "\n\nIMPROCEDENCIA: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['improcedencia']}'),
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['improcedencia_a']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['improcedencia_b']}'),
                            TextSpan(
                                text: "\nc. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['improcedencia_c']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 9º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo9']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo_art9']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 10º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo10']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo_art10']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 11º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo11']}",
                              style: const TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTÍCULO 12º:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "${data['articulo12']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\n1. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo12_1']}'),
                            TextSpan(
                                text: "\n2. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo12_2']}'),
                          ])),
                    ],
                  ),
                ),
              ],
            );
          }
          return Lottie.asset("assets/cargando.json");
        });
  }
}
