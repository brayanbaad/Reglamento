import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo2Page extends StatefulWidget {
  Capitulo2Page({Key? key}) : super(key: key);

  @override
  State<Capitulo2Page> createState() => _Capitulo2PageState();
}

class _Capitulo2PageState extends State<Capitulo2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo2"),
      ),
    );
  }
}
