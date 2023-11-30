import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_green_tumps/model/core/const.dart';
import 'package:test_green_tumps/view/Plantview/PlantViewPage.dart';
import 'package:test_green_tumps/view/cartpage/cartpage.dart';
import 'package:test_green_tumps/view/screen_one/widget/bottom_avatar.dart';
import 'package:test_green_tumps/view/screen_one/widget/sildeble_containers.dart';
import 'package:test_green_tumps/view/screen_one/widget/top_tab_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFFFAFCFF), Color(0xFFDEEDFE)],
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 214,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Let’s Make our lives ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Greener',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w900,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 9.h,
                          width: 11.w,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: const Color.fromARGB(255, 29, 39, 43)),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(Icons.menu),
                        )
                      ],
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: TopTabWidget(text: 'Plants', index: 0),
                        ),
                        TopTabWidget(text: 'Flowers', index: 1),
                        TopTabWidget(text: 'Cacti', index: 2),
                        TopTabWidget(text: 'Herbs', index: 3),
                        TopTabWidget(text: 'Trees', index: 4),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          'Plant Collections',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Satoshi',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, top: 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_rounded)),
                        ),
                      )
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 47.h,
                      aspectRatio: 11 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: 70.w,
                              height: 20.h,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      height: 25.h,
                                      width: 60.w,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'asset/image/potted_head.png')),
                                          color: const Color(0xFFDEEDFE),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                  const Text(
                                    'The Potted Head',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Satoshi',
                                    ),
                                  ),
                                  const Text(
                                    'Perfect for beginners or anyone looking for an easy-to-care-for plant',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF8B8B8B),
                                      fontSize: 14,
                                      fontFamily: 'Satoshi',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ScreenTwo()));
                                    },
                                    child: Container(
                                      height: 6.5.h,
                                      width: 60.w,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.add_shopping_cart,
                                              color: Color.fromARGB(
                                                  255, 145, 220, 80),
                                            ),
                                          ),
                                          const Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Satoshi',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          const Text(
                                            '\$50.00',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Satoshi',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 8.h),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 12.h,
                        // width: 90.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'asset/image/bottom-01.png',
                                ),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cart',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Satoshi',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  Text(
                                    '4 items',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Satoshi',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                              child: const Stack(
                                children: [
                                  Positioned(child: BottomAvatar()),
                                  Positioned(left: 20, child: BottomAvatar()),
                                  Positioned(left: 40, child: BottomAvatar()),
                                  Positioned(left: 60, child: BottomAvatar()),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
