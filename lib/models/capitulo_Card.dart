import 'package:flutter/material.dart';
import 'package:reglamento_estudiantil/models/capitulo.dart';

import '../constants.dart';

class CapituloCard extends StatelessWidget {
  const CapituloCard({
    Key? key,
    required this.itemIndex,
    required this.capitulo,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Capitulo capitulo;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 45),
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 1,
      ),
      // color: Colors.blueAccent,

      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            //container principal
            Positioned(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                  boxShadow: [kDefaultShadow],
                ),
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            // imagen
            Positioned(
              top: 102,
              right: 80,
              child: Hero(
                tag: '${capitulo.description}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 297,
                  width: 360,
                  child: Image.asset(
                    capitulo.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //textos
            Positioned(
              bottom: 166,
              left: 179,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Spacer(),
                    const SizedBox(
                      height: 10,
                    ),
                    //titulo
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Center(
                        child: Text(capitulo.title,
                            style: const TextStyle(
                              fontSize: 18,
                            )),
                      ),
                    ),
                    // descripcion
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Center(
                        child: Text(
                          capitulo.description,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
