import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/color.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: cardColor,
      child: Stack(
        children: [
          Image.asset(
            bigTriangle,
            height: 138.h,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 138.h,
            child: Row(
              children: [
                Container(
                  width: 120.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SAM 23 MAI",
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: kcWhite),
                      ),
                      SizedBox(
                        width: 90.w,
                        child: Divider(
                          color: kcWhite,
                          thickness: 2,
                        ),
                      ),
                      Text(
                        "11h00",
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold, color: kcWhite),
                      ),
                      Text(
                        "12h00",
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold, color: kcWhite),
                      )
                    ],
                  ),
                ),
                VerticalDivider(
                  thickness: 3,
                  color: buttonColor,
                ),
                horizontalSpaceMedium(),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PAS DE TIR",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          color: secondaryColor,
                          child: Image.asset(
                            "assets/images/logo1.png",
                            scale: 5,
                          ),
                        ),
                        horizontalSpaceSmall(),
                        Text(
                          "fun shoot",
                          style: ThemeData().textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 11),
                        ),
                      ],
                    ),
                    Text(
                      "CZ Shadow 2 - Bushing Cerakote 9x19 - 9mm x100 Lunettes, chargeurs...voir plus",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 29.h,
              width: 91.w,
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(5.0),
                    bottomRight: const Radius.circular(5.0),
                  )),
              child: Center(
                child: Text(
                  "Annuler",
                  style: ThemeData().textTheme.headlineSmall!.copyWith(
                      color: kcWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
