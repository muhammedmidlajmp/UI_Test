// ignore_for_file: unused_local_variable, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_green_tumps/view/cartpage/cartlistmodel.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqurey = MediaQuery.of(context).size;
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Container(
              height: mediaqurey.height * .13,
              // color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(children: [
                  "Cart".text.extraBlack.size(Vx.dp48).make(),
                  const Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color.fromARGB(255, 134, 229, 166),
                    child: Center(child: "4".text.bold.size(26).make()),
                  )
                ]),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('asset/image/cartunderimage-01.png'))),
                // color: Colors.red,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Expanded(
                        flex: 1,
                        child: Container(
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return const Cartlist();
                            },
                          ),
                          // color: Colors.deepOrange,
                        )),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Column(children: [
                              40.heightBox,
                              Row(
                                children: [
                                  "Delivery Amount".text.size(Vx.dp20).make(),
                                  const Spacer(),
                                  "₹ 25.50".text.bold.size(Vx.dp20).make(),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(),
                              ),
                              Row(
                                children: [
                                  "Total Amount".text.size(Vx.dp20).bold.make(),
                                  const Spacer(),
                                  "₹ 365.50".text.bold.size(Vx.dp24).make(),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Row(children: [
                                    15.widthBox,
                                    "Make Payment"
                                        .text
                                        .bold
                                        .size(Vx.dp20)
                                        .make(),
                                    const Spacer(),
                                    Container(
                                        child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: Colors.white38,
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: Colors.white54,
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: Colors.white,
                                              )
                                            ]),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 41, 39, 39),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        width: 100,
                                        height: 40),
                                    10.widthBox,
                                  ]),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          146, 191, 255, 226),
                                      border: Border.all(width: 1),
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 60,
                                  width: double.infinity,
                                  // color: Colors.brown,
                                ),
                              ),
                            ]),
                          ),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "asset/image/cart bottom card-01.png",
                                  ),
                                  fit: BoxFit.fill)),
                          height: 30.h,
                        ),
                      ))
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
