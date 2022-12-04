import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';

class Capitulo6Page extends StatefulWidget {
  Capitulo6Page({Key? key}) : super(key: key);

  @override
  State<Capitulo6Page> createState() => _Capitulo6PageState();
}

class _Capitulo6PageState extends State<Capitulo6Page> {
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
        future: coleccion.doc('capitulo6').get(),
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
                  child: const Text("CAPÍTULO VI: DE LOS INCENTIVOS",
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
                    title: Text("ARTICULO N°67:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo67']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°68:",
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
                              text: "${data['articulo68']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisoa']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisob']}'),
                            TextSpan(
                                text: "\nc. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisoc']}'),
                            TextSpan(
                                text: "\nd. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisod']}'),
                            TextSpan(
                                text: "\ne. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisoe']}'),
                            TextSpan(
                                text: "\nf. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisof']}'),
                            TextSpan(
                                text: "\ng. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisog']}'),
                            TextSpan(
                                text: "\nh. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisoh']}'),
                            TextSpan(
                                text: "\ni. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisoi']}'),
                            TextSpan(
                                text: "\nj. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisoj']}'),
                            TextSpan(
                                text: "\nk. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisok']}'),
                            TextSpan(
                                text: "\nl. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['incisol']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°69:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo69']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°70:",
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
                              text: "${data['articulo70']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo']}'),
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
