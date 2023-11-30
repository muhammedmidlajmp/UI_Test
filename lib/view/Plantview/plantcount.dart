import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class plantcountcard extends StatelessWidget {
  const plantcountcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: Container(
        child: Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Image.asset("asset/image/right01-01.png"),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.minimize,
                          size: 40,
                        )),
                  ))
                ],
              ),
              // color: Colors.blueGrey,
            )),
            Expanded(
                flex: 3,
                child: Container(
                  child: Center(child: "02".text.size(130).bold.make()),
                  // color: Colors.pink,
                )),
            Expanded(
                child: Container(
              alignment: Alignment.centerRight,
              child: Stack(
                children: [
                  Image.asset("asset/image/left-01.png"),
                  Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 40,
                          )))
                ],
              ),
              // color: Colors.orangeAccent,
            ))
          ],
        ),
        // color: Colors.yellow,
      ),
    );
  }
}
