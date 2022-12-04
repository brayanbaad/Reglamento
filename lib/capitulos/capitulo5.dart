import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';

class Capitulo5Page extends StatefulWidget {
  Capitulo5Page({Key? key}) : super(key: key);

  @override
  State<Capitulo5Page> createState() => _Capitulo5PageState();
}

class _Capitulo5PageState extends State<Capitulo5Page> {
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
        future: coleccion.doc('capitulo5').get(),
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
                  child: const Text(
                      "CAPÍTULO V: DEL RÉGIMEN ACADÉMICO PROGRAMACIÓN Y ASISTENCIA",
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
                        "ARTICULO N°29: (MODIFICADO, por el Artículo Cuarto del Acuerdo No 003 DEL 08-02-03).",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo29']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°30:",
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
                              text: "${data['articulo30']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_a']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_b']}'),
                            TextSpan(
                                text: "\nc. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_c']}'),
                            TextSpan(
                                text: "\nd. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_d']}'),
                            TextSpan(
                                text: "\ne. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_e']}'),
                            TextSpan(
                                text: "\nf. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_f']}'),
                            TextSpan(
                                text: "\ng. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_g']}'),
                            TextSpan(
                                text: "\nh. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo30_h']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo_art30']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(
                        "ARTICULO N°30A: (ADICIONADO, Artículo Quinto Acuerdo 003 de 08-02-2003)",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo30a']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°31:",
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
                              text: "${data['articulo31']}",
                              style: const TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('EVALUACIÓN ACADÉMICA:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(
                        "ARTICULO N°32: (MODIFICADO, por el Artículo Séptimo del Acuerdo No 003 DEL 08-02-03).",
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
                              text: "${data['articulo32']}",
                              style: const TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°33:",
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
                              text: "${data['articulo33']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo_art33']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(
                        "ARTICULO N°34: (MODIFICADO, por el Artículo Noveno del Acuerdo No 003 DEL 08-02- 03).",
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
                              text: "${data['articulo34']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo34_a']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo34_b']}'),
                            TextSpan(
                                text: "\nc. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo34_c']}'),
                            TextSpan(
                                text: "\nd. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo34_d']}'),
                            TextSpan(
                                text: "\ne. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo34_e']}'),
                            TextSpan(
                                text: "\nf. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo34_f']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°35:",
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
                              text: "${data['articulo35']}",
                              style: const TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°36:",
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
                              text: "${data['articulo36']}",
                              style: const TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°37:",
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
                              text: "${data['articulo37']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\nEL PROMEDIO PONDERADO ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['promedioponde']}'),
                            TextSpan(
                                text: "\n\nEl PROMEDIO PONDERADO SEMESTRAL ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['promediopondes']}'),
                            TextSpan(
                                text: "\n\nEl PROMEDIO PONDERADO ACUMULADO ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['promediopondea']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo_art37']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°38:",
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
                              text: "${data['articulo38']}",
                              style: const TextStyle(color: Colors.black))),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°39:",
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
                              text: "${data['articulo39']}",
                              style: const TextStyle(color: Colors.black))),
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
