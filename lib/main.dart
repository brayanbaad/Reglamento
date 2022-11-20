import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:reglamento_estudiantil/pages/splash_page/onboarding_page.dart';
import 'routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

Future firebaseiniciacion() async {
  FirebaseApp initializacion = await Firebase.initializeApp();
  return initializacion;
}

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/onboarding',
      getPages: route(),
      theme: ThemeData(fontFamily: GoogleFonts.rubik().fontFamily),
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: firebaseiniciacion(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return OnboardingPage();
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
