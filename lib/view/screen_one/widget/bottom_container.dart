
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_green_tumps/view/screen_one/widget/bottom_avatar.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType)=>
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
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
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
    );
  }
}
