import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo6Page extends StatefulWidget {
  Capitulo6Page({Key? key}) : super(key: key);

  @override
  State<Capitulo6Page> createState() => _Capitulo6PageState();
}

class _Capitulo6PageState extends State<Capitulo6Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo6"),
      ),
    );
  }
}
