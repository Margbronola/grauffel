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
                            fontSize: 13.sp,
                            color: kcWhite),
                      ),
                      SizedBox(
                        width: 65.w,
                        child: Divider(
                          height: 10.h,
                          color: kcWhite,
                          thickness: 2,
                        ),
                      ),
                      Text(
                        "11h00",
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kcWhite,
                            fontSize: 12.sp),
                      ),
                      Text(
                        "12h00",
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kcWhite,
                            fontSize: 12.sp),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PAS DE TIR",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15.h,
                          width: 15.w,
                          child: Image.asset(
                            secureIcon,
                            scale: 5,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "fun shoot",
                          style: ThemeData().textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 11),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "CZ Shadow 2 - Bushing Cerakote 9x19 - 9mm x100 Lunettes, chargeurs voir plus Bushing Cerakote 9x19 - 9mm x100 Lunettes, chargeurs ",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                      maxLines: 3,
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
