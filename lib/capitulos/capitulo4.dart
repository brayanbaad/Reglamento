import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo4Page extends StatefulWidget {
  Capitulo4Page({Key? key}) : super(key: key);

  @override
  State<Capitulo4Page> createState() => _Capitulo4PageState();
}

class _Capitulo4PageState extends State<Capitulo4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo4"),
      ),
    );
  }
}
