import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/color.dart';
import '../../shared/ui_helper.dart';
import '../../shared/widget/itemCard.dart';

class ReserveCardDetails extends StatelessWidget {
  const ReserveCardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcWhite,
      appBar: AppBar(
        backgroundColor: kcWhite,
        elevation: 0,
        leadingWidth: 200,
        leading: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium(),
            Text(
              "John".toUpperCase(),
              style: TextStyle(fontFamily: 'ProductSans', fontSize: 22.sp),
            ),
            Text(
              "Vous avez réservé".toUpperCase(),
              style: TextStyle(fontFamily: 'ProductSans', fontSize: 22.sp),
            ),
            verticalSpaceMedium(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/cross.png",
                      width: 27.w,
                      color: Colors.black,
                    ),
                    verticalSpaceSmall(),
                    const Text(
                      "25 mètres",
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/calendar.png",
                      width: 27.w,
                      color: Colors.black,
                    ),
                    verticalSpaceSmall(),
                    const Text(
                      "sam. 23 mai",
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/time.png",
                      width: 27.w,
                      color: Colors.black,
                    ),
                    verticalSpaceSmall(),
                    const Text(
                      "10h00 - 11h00",
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
            verticalSpaceMedium(),
            const ItemCard(
              image: "gun",
              title: "Glock 19 Gen 5",
              brand: "Marque",
              reference: "Référence",
            ),
            verticalSpaceSmall(),
            const ItemCard(
              image: "bullet",
              title: "9x19 - 9mm",
              brand: "Marque",
              reference: "Référence",
              extraButton: "3 boîtes de 50",
            ),
            verticalSpaceMedium(),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempus a nisi nec dapibus. Proin velit nulla",
              style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
