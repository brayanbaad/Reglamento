import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo7Page extends StatefulWidget {
  Capitulo7Page({Key? key}) : super(key: key);

  @override
  State<Capitulo7Page> createState() => _Capitulo7PageState();
}

class _Capitulo7PageState extends State<Capitulo7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo7"),
      ),
    );
  }
}
