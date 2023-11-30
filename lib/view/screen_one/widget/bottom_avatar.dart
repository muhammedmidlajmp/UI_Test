import 'package:flutter/material.dart';

class BottomAvatar extends StatelessWidget {
  const BottomAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        image: DecorationImage(
            image: AssetImage(
                'asset/image/67cea3701ef2f6e370be5caabd862fae (1) (1).png')),
        color: Color(0xFFD9FCED),
        shape: OvalBorder(
          side: BorderSide(
            width: 2,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFF44F1A6),
          ),
        ),
      ),
    );
  }
}
