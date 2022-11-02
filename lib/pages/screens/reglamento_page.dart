import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reglamento_estudiantil/models/capitulo_Card.dart';
import 'package:reglamento_estudiantil/pages/screens/quiz_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants.dart';
import '../../models/capitulo.dart';

class ReglamentoPage extends StatelessWidget {
  ReglamentoPage({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final _id;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(height: kDefaultPadding / 1),
            Flexible(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  PageView.builder(
                    controller: _controller,
                    itemCount: Capitulos.length,
                    itemBuilder: (context, index) => CapituloCard(
                      itemIndex: index,
                      capitulo: Capitulos[index],
                      press: () {
                        var id = index + 1;
                        Navigator.pushNamed(context, '/capitulo$id');
                        Get.snackbar(
                            'NOTIFICACION', 'Bienvenido al capitulo: ${id}',
                            icon: const Icon(
                              Icons.assignment_turned_in,
                              color: Color.fromARGB(255, 8, 194, 14),
                            ),
                            colorText: Colors.black87,
                            duration: Duration(seconds: 3));
                      },
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                  //pageIndicator
                  Positioned(
                    top: 490,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 9,
                      effect: WormEffect(
                          activeDotColor: Color.fromARGB(129, 38, 107, 53),
                          dotColor:
                              Color.fromARGB(255, 82, 85, 82).withOpacity(0.1),
                          dotHeight: 20,
                          dotWidth: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
