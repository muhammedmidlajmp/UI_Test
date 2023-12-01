// ignore_for_file: unused_local_variable, sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:test_green_tumps/view/Plantview/bottomaddtocart.dart';
import 'package:test_green_tumps/view/Plantview/panttitle.dart';
import 'package:test_green_tumps/view/Plantview/plantcount.dart';
import 'package:test_green_tumps/view/Plantview/plantimage.dart';
import 'package:test_green_tumps/view/cartpage/cartpage.dart';
import 'package:velocity_x/velocity_x.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          const topTitleAndIcon(),
          PlantimageView(mediaqurey: mediaqurey),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: AspectRatio(
                aspectRatio: 8,
                child: SizedBox(
                  height: 25,
                  child:
                      "Perfect for beginners of anyone looking\nfor an easy-to-care-for plant"
                          .text
                          .color(Colors.grey.shade700)
                          .size(40)
                          .italic
                          .align(TextAlign.center)
                          .make(),
                )),
          ),
          const plantcountcard(),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              child: const BottomCard()),
          10.heightBox
        ],
      )),
    );
  }
}
