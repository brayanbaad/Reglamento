import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:reglamento_estudiantil/examens/examenCap1.dart';
import 'package:reglamento_estudiantil/pages/screens/inicio_page.dart';
import 'package:reglamento_estudiantil/pages/screens/quiz_page.dart';
import 'package:reglamento_estudiantil/pages/screens/reglamento_page.dart';
import '../../widgets/button_rounded_quiz.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final colors = [
    Color.fromARGB(207, 38, 107, 53),
    Color.fromARGB(207, 38, 107, 53),
    Color.fromARGB(207, 38, 107, 53),
  ];
  final screens = <Widget>[
    ReglamentoPage(),
    // const InicioPage(),
    QuizPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex],
          tabBackgroundColor: colors[_currentIndex],
          selectedIndex: _currentIndex,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          onTabChange: (index) => {setState(() => _currentIndex = index)},
          tabs: const [
            GButton(
              icon: Icons.auto_stories_rounded,
              text: ' Reglamento',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            /* GButton(
              icon: Icons.home,
              text: ' Inicio',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ), */
            GButton(
              icon: Icons.assignment,
              text: ' Quiz',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
    // ignore: dead_code
  }
}
