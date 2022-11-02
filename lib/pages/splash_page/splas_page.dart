import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:reglamento_estudiantil/pages/screens/home_page.dart';
import 'package:reglamento_estudiantil/pages/splash_page/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: <Widget>[
          Image.asset(
            "assets/upclogo.jpg",
            height: 300,
            width: 300,
          ),
        ],
      ),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      nextScreen: OnboardingPage(),
      splashIconSize: 60,
      duration: 3000,
      centered: true,
    );
  }
}
