import 'package:flutter/material.dart';
import 'package:test_green_tumps/model/core/const.dart';
import 'package:velocity_x/velocity_x.dart';

class topTitleAndIcon extends StatelessWidget {
  const topTitleAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.7,
      child: Container(
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            15.widthBox,
            Expanded(
              child: Container(
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'The Plotted ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '\nHead',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Icon(
                Icons.format_align_center_rounded,
                color: iconcolor,
              ),
              height: 60,
              width: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.red,
                border: Border.all(
                  color: iconcolor,
                  width: 1.5,
                ),
              ),
            ),
            10.widthBox
          ],
        ),
        // color: Colors.amber,
      ),
    );
  }
}
