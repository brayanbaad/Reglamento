import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:reglamento_estudiantil/pages/screens/home_page.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Bienvenidos',
        body:
            'Encontraras una serie de módulos, separados por capítulos, donde conocerás el reglamento estudiantil ',
        image: Center(
          child: Image.asset("assets/presentacion.jpg"),
        ),
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
    PageViewModel(
        title: 'Información',
        body:
            'También encontraras un módulo de exámenes, donde podrás afianzar los conocimientos adquiridos',
        image: Center(
          child: Image.asset("assets/mujeramarillo.jpg"),
        ),
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
            size: Size(18, 14),
            color: Colors.green,
            activeSize: Size.square(15),
            activeColor: Color.fromARGB(255, 12, 11, 11)),
        showDoneButton: true,
        done: const Text(
          "Empezar ",
          style: TextStyle(
              fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
        ),
        showNextButton: true,
        next: const Text("Siguiente",
            style: TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.bold)),
        onDone: () => onDone(context),
        curve: Curves.decelerate,
      ),
    );
  }

  void onDone(context) async {
    if (await conexion()) {
      Get.snackbar('NOTIFICACION', 'BIENVENIDO(@) A TU APP UNICESAR ',
          icon: const Icon(
            Icons.check_box,
            color: Color.fromARGB(255, 8, 194, 14),
          ),
          colorText: Colors.black,
          duration: Duration(seconds: 4));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Get.snackbar('INFORMACION', 'NO TIENES ACCESO A INTERNET ',
          icon: const Icon(
            Icons.error_outline_outlined,
            color: Color.fromARGB(255, 194, 20, 8),
          ),
          colorText: Colors.black,
          duration: Duration(seconds: 4));
    }
  }

  Future<bool> conexion() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }
}
