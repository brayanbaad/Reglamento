import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo8Page extends StatefulWidget {
  Capitulo8Page({Key? key}) : super(key: key);

  @override
  State<Capitulo8Page> createState() => _Capitulo8PageState();
}

class _Capitulo8PageState extends State<Capitulo8Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo8"),
      ),
    );
  }
}
