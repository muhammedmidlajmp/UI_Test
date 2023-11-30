import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PlantimageView extends StatelessWidget {
  const PlantimageView({
    super.key,
    required this.mediaqurey,
  });

  final Size mediaqurey;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Center(
                  child: "Plants"
                      .text
                      .size(163)
                      .color(const Color.fromARGB(255, 155, 211, 157)
                          .withOpacity(.1))
                      .bold
                      .make()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Container(
                  height: mediaqurey.height * .19,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(192, 184, 169, 253),
                        Color.fromARGB(0, 255, 255, 255),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: SizedBox(
                height: mediaqurey.height * .4,
                child: Image.asset("asset/image/potted_head.png"),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
