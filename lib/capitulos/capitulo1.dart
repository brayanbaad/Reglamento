import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:lottie/lottie.dart';

class Capitulo1Page extends StatefulWidget {
  Capitulo1Page({Key? key}) : super(key: key);

  @override
  State<Capitulo1Page> createState() => _Capitulo1PageState();
}

class _Capitulo1PageState extends State<Capitulo1Page> {
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
          Padding(
            padding: EdgeInsets.all(10.0),
            child: SafeArea(
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
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class future extends StatelessWidget {
  const future({
    Key? key,
    required this.coleccion,
  }) : super(key: key);

  final CollectionReference<Object?> coleccion;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: coleccion.doc('capitulo1').get(),
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
                const Text("CAPITULO I: DE LOS ESTUDIANTES",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    )),
                Image.asset(
                  "assets/estudent.png",
                  width: 200,
                ),
                const SizedBox(height: 17),
                Row(
                  children: [
                    Text(
                      "ARTICULO N°1:",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 17),
                Text(
                  "${data['articulo_1']}",
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 17),
                Row(
                  children: [
                    Text(
                      "ARTICULO N°2:",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 17),
                Center(
                  child: Text(
                    "${data['articulo_2']}",
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 17),
                Row(
                  children: [
                    Text(
                      "ARTICULO N°3:",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 17),
                    Column(
                      children: [
                        Text(
                          "${data['inciso1']}",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${data['inciso2']}",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${data['inciso3']}",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${data['inciso4']}",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${data['inciso5']}",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16),
                /* ClipPath(
                  clipper: WaveClipperTwo(reverse: true),
                  child: Container(
                    height: 80,
                  ),
                ), */
              ],
            );
          }
          return Lottie.asset("assets/cargando.json");
        });
  }
}
