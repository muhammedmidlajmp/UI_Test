// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartlist extends StatelessWidget {
  const Cartlist({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            20.widthBox,
            Container(
              height: 70,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "asset/image/potted_head.png",
                    ),
                    scale: 25),
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
            10.widthBox,
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "The Potted Head".text.size(Vx.dp16).bold.make(),
                  "1 piece".text.size(Vx.dp16).color(Colors.grey).make(),
                ],
              ),
            ),
            Container(
                child: Center(child: "₹ 365.50".text.extraBlack.make()),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                width: 100,
                height: 40),
            20.widthBox
          ]),
          width: double.infinity,
          height: 130,
          // color: Colors.amber,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        )
      ],
    );
  }
}
