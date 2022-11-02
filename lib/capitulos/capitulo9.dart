import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo9Page extends StatefulWidget {
  Capitulo9Page({Key? key}) : super(key: key);

  @override
  State<Capitulo9Page> createState() => _Capitulo9PageState();
}

class _Capitulo9PageState extends State<Capitulo9Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo9"),
      ),
    );
  }
}
