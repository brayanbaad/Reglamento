import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reglamento_estudiantil/capitulos/capitulo1.dart';
import 'package:reglamento_estudiantil/pages/screens/home_page.dart';
import 'package:reglamento_estudiantil/pages/screens/reglamento_page.dart';
import 'package:reglamento_estudiantil/pages/splash_page/splas_page.dart';
import '../capitulos/capitulo2.dart';
import '../capitulos/capitulo3.dart';
import '../capitulos/capitulo4.dart';
import '../capitulos/capitulo5.dart';
import '../capitulos/capitulo6.dart';
import '../capitulos/capitulo7.dart';
import '../capitulos/capitulo8.dart';
import '../capitulos/capitulo9.dart';

import '../exams/examenCap1.dart';
import '../exams/examenCap2.dart';
import '../exams/examenCap3.dart';
import '../exams/examenCap4.dart';
import '../exams/examenCap5.dart';
import '../exams/examenCap6.dart';
import '../exams/examenCap7.dart';
import '../exams/examenCap8.dart';
import '../exams/examenCap9.dart';
import '../models/question.dart';
import '../pages/splash_page/onboarding_page.dart';

route() => [
      // ignore: prefer_const_constructors
      GetPage(name: '/home', page: () => HomePage()),
      GetPage(name: '/splash', page: () => SplashPage()),
      GetPage(name: '/onboarding', page: () => OnboardingPage()),
      GetPage(name: '/reglamento', page: () => ReglamentoPage()),
      GetPage(name: '/capitulo1', page: () => Capitulo1Page()),
      GetPage(name: '/capitulo2', page: () => Capitulo2Page()),
      GetPage(name: '/capitulo3', page: () => Capitulo3Page()),
      GetPage(name: '/capitulo4', page: () => Capitulo4Page()),
      GetPage(name: '/capitulo5', page: () => Capitulo5Page()),
      GetPage(name: '/capitulo6', page: () => Capitulo6Page()),
      GetPage(name: '/capitulo7', page: () => Capitulo7Page()),
      GetPage(name: '/capitulo8', page: () => Capitulo8Page()),
      GetPage(name: '/capitulo9', page: () => Capitulo9Page()),
    ];
