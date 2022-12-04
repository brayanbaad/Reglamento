import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';

class Capitulo9Page extends StatefulWidget {
  Capitulo9Page({Key? key}) : super(key: key);

  @override
  State<Capitulo9Page> createState() => _Capitulo9PageState();
}

class _Capitulo9PageState extends State<Capitulo9Page> {
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
        future: coleccion.doc('capitulo9').get(),
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
                      "CAPÍTULO IX: DE LAS ORGANIZACIONES ESTUDIANTILES",
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
                    title: Text("ARTICULO N°83:",
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
                              text: "${data['articulo83']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\n• ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo83_1']}'),
                            TextSpan(
                                text: "\n• ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo83_2']}'),
                            TextSpan(
                                text: "\n• ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo83_3']}'),
                            TextSpan(
                                text: "\n• ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo83_4']}'),
                            TextSpan(
                                text: "\n• ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo83_5']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°84:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo84']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°85:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo85']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°86:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo86']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    child: Text("COMUNÍQUESE Y CÚMPLASE",
                        style: TextStyle(fontStyle: FontStyle.italic))),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 16),
                    child: Text("Dado en Valledupar a los Vetiún (21) días del mes de febrero de Mil Novecientos Noventa y Cuatro (1994).",
                        style: TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,))
              ],
            );
          }
          return Lottie.asset("assets/cargando.json");
        });
  }
}
