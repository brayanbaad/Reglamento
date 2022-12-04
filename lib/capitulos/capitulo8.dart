import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';

class Capitulo8Page extends StatefulWidget {
  Capitulo8Page({Key? key}) : super(key: key);

  @override
  State<Capitulo8Page> createState() => _Capitulo8PageState();
}

class _Capitulo8PageState extends State<Capitulo8Page> {
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
        future: coleccion.doc('capitulo8').get(),
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
                  child: const Text("CAPÍTULO VIII: DE LOS CERTIFICADOS",
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
                    title: Text("ARTICULO N°80:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo80']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°81:",
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
                              text: "${data['articulo81']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\na. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_a']}'),
                            TextSpan(
                                text: "\nb. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_b']}'),
                            TextSpan(
                                text: "\n\n1. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_1']}'),
                            TextSpan(
                                text: "\n2. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_2']}'),
                            TextSpan(
                                text: "\n3. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_3']}'),
                            TextSpan(
                                text: "\n4. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_4']}'),
                            TextSpan(
                                text: "\n5. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_5']}'),
                            TextSpan(
                                text: "\n6. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_6']}'),
                            TextSpan(
                                text: "\n7. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_7']}'),
                            TextSpan(
                                text: "\n8. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_8']}'),
                            TextSpan(
                                text: "\n9. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_9']}'),
                            TextSpan(
                                text: "\n10. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_10']}'),
                            TextSpan(
                                text: "\n11. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo81_11']}'),
                            TextSpan(
                                text: "\n\nPARÁGRAFO: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['paragrafo_art81']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°82:",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    iconColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    collapsedIconColor: Colors.black,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${data['articulo82']}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black)),
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
