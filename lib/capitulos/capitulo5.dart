import 'package:flutter/material.dart';

import '../constants.dart';

class Capitulo5Page extends StatefulWidget {
  Capitulo5Page({Key? key}) : super(key: key);

  @override
  State<Capitulo5Page> createState() => _Capitulo5PageState();
}

class _Capitulo5PageState extends State<Capitulo5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
      ),
      body: Center(
        child: Text("capitulo5"),
      ),
    );
  }
}
