import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';

class Capitulo4Page extends StatefulWidget {
  Capitulo4Page({Key? key}) : super(key: key);

  @override
  State<Capitulo4Page> createState() => _Capitulo4PageState();
}

class _Capitulo4PageState extends State<Capitulo4Page> {
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
        future: coleccion.doc('capitulo4').get(),
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
                      "CAPÍTULO IV: DEBERES Y DERECHOS DE LOS ESTUDIANTES",
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
                    title: Text("ARTICULO N°27:",
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
                              text: "${data['articulo27']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\n1. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_1']}'),
                            TextSpan(
                                text: "\n2. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_2']}'),
                            TextSpan(
                                text: "\n3. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_3']}'),
                            TextSpan(
                                text: "\n4. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_4']}'),
                            TextSpan(
                                text: "\n5. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_5']}'),
                            TextSpan(
                                text: "\n6. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_6']}'),
                            TextSpan(
                                text: "\n7. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_7']}'),
                            TextSpan(
                                text: "\n8. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo27_8']}'),
                          ])),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("ARTICULO N°28:",
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
                              text: "${data['articulo28']}",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "\n\n1. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo28_1']}'),
                            TextSpan(
                                text: "\n2. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo28_2']}'),
                            TextSpan(
                                text: "\n3. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo28_3']}'),
                            TextSpan(
                                text: "\n4. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo28_4']}'),
                            TextSpan(
                                text: "\n5. ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '${data['articulo28_5']}'),
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
