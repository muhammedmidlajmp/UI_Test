import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_green_tumps/controller/provider/screen_one_provider.dart';
import 'package:test_green_tumps/model/core/const.dart';

class TopTabWidget extends StatelessWidget {
  final String text;
  final int index;

  const TopTabWidget({super.key, required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<TabSelectionProvider>(builder: (context, tabProvider, _) {
      Color color = tabProvider.selectedTabIndex == index
          ? topNavButtonColor
          : Colors.white;
      return GestureDetector(
        onTap: () {
          tabProvider.selectTab(index);
        },
        child: Container(
          width: 83,
          height: 38,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          child: Center(
            child: Container(
              width: 70,
              height: 28,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: ShapeDecoration(
                color: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Supreme',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
