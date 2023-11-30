import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
        child: Container(
          // ignore: sort_child_properties_last
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  // ignore: sort_child_properties_last
                  child: Icon(
                    Icons.delete_outline_outlined,
                    size: 30,
                  ),
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 134, 229, 166),
                ),
                10.widthBox,
                "Add to Cart"
                    .text
                    .color(Colors.white)
                    .fontFamily("poppins")
                    .size(20)
                    .make(),
                const Spacer(),
                " ₹50.00"
                    .text
                    .color(Colors.white)
                    .fontFamily("poppins")
                    .size(20)
                    .make(),
                10.widthBox
              ],
            ),
          )),
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(50))),
        ),
      ),
    );
  }
}