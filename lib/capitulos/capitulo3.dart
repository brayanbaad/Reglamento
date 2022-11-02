import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo3Page extends StatefulWidget {
  Capitulo3Page({Key? key}) : super(key: key);

  @override
  State<Capitulo3Page> createState() => _Capitulo3PageState();
}

class _Capitulo3PageState extends State<Capitulo3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo3"),
      ),
    );
  }
}
