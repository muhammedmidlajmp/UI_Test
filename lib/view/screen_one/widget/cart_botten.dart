import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CartBotton extends StatelessWidget {
  const CartBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Container(
        height: 6.5.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_shopping_cart,
                color: Color.fromARGB(255, 145, 220, 80),
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
    );
  }
}
