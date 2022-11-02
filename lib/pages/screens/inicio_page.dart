import 'dart:developer';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:reglamento_estudiantil/constants.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    CollectionReference coleccion =
        FirebaseFirestore.instance.collection('reglamento');
    final carouselImages = [
      "https://img.freepik.com/vector-gratis/plantilla-poster-evento-musical-formas-coloridas_1361-1591.jpg?w=2000",
      "https://img.freepik.com/vector-gratis/plantilla-poster-evento-musical-formas-coloridas_1361-1591.jpg?w=2000",
      "https://img.freepik.com/vector-gratis/plantilla-poster-evento-musical-formas-coloridas_1361-1591.jpg?w=2000",
    ];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        automaticallyImplyLeading: false,
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () {
              _showAlert(context, "Desea salir de la App?");
            },
            icon: const Icon(Icons.exit_to_app_outlined),
            iconSize: 30,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(children: [
          Center(
            child: FutureBuilder<DocumentSnapshot>(
                future: coleccion.doc(' acuerdo ').get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Algo salio mal");
                  }
                  if (snapshot.hasData && !snapshot.data!.exists) {
                    return const Text("El documento no existe");
                  }
                  if (snapshot.data != null) {
                    Map<String, dynamic> data =
                        snapshot.data!.data() as Map<String, dynamic>;
                    return Column(
                      children: [
                        const SizedBox(height: 17),
                        const Text("UNIVERSIDAD POPULAR DEL CESAR",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            )),
                        const SizedBox(height: 25),
                        // parrafo de consejo superior
                        Row(
                          children: [
                            Text("EVENTOS",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                )),
                          ],
                        ),

                        const SizedBox(height: 20),
                        //carousel de imagenes
                        Container(
                          color: Colors.transparent,
                          child: CarouselSlider.builder(
                              itemCount: carouselImages.length,
                              itemBuilder: (context, index, realindex) {
                                final carouselImage = carouselImages[index];
                                return builImage(carouselImage, index);
                              },
                              options: CarouselOptions(
                                  height: 250,
                                  autoPlay: true,
                                  autoPlayCurve: Curves.easeInOut,
                                  enlargeCenterPage: true,
                                  autoPlayInterval: const Duration(seconds: 4),
                                  scrollDirection: Axis.horizontal)),
                        ),
                        const SizedBox(height: 8),
                      ],
                    );
                  }
                  return Lottie.asset("assets/cargando.json");
                }),
          ),
        ]),
      ),
    );
  }

  Widget builImage(String cardimage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: 600.0,
          height: 300.0,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                cardimage,
                fit: BoxFit.cover,
              )),
        ),
      );

  void _showAlert(BuildContext context, String text) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Text('Informacion'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                text,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
                child: const Text('Aceptar',
                    style: TextStyle(color: Colors.green)),
                onPressed: () {
                  Get.snackbar('NOTIFICACION',
                      'Gracias por usar nuestra App, Vuelve pronto ',
                      icon: const Icon(
                        Icons.assignment_turned_in,
                        color: Color.fromARGB(255, 8, 194, 14),
                      ),
                      colorText: Colors.black,
                      duration: Duration(seconds: 4));
                  Navigator.pushNamed(context, '/onboarding');
                }),
          ],
        );
      },
    );
  }

  // ignore: unused_element

}
