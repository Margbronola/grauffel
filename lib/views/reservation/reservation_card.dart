import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:localization/localization.dart';

import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';

class ReservationCard extends StatelessWidget {
  final BookingModel booking;
  final bool isActive;
  const ReservationCard({
    Key? key,
    required this.booking,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isActive ? 5 : null,
      color: isActive ? Colors.white : Colors.white60,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 148.h,
            child: Row(
              children: [
                SizedBox(
                  width: 80.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${DateFormat('E').format(booking.start!).i18n().toUpperCase()}\n${DateFormat('dd').format(booking.start!)} ${DateFormat('MMM').format(booking.start!).toUpperCase()}",
                        textAlign: TextAlign.center,
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: buttonColor),
                      ),
                      verticalSpaceSmall(),
                      Text(
                        "${booking.start!.hour}h${booking.start!.minute}",
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: backgroundColor,
                            fontSize: 15.sp),
                      ),
                      Text(
                        "${booking.end!.hour}h${booking.end!.minute}",
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: backgroundColor,
                            fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  thickness: 3,
                  color: buttonColor,
                ),
                horizontalSpaceMedium(),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${booking.name}".toUpperCase(),
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "${booking.activity!.description}",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                      maxLines: 3,
                    ),
                  ],
                ))
              ],
            ),
          ),
          !isActive
              ? const SizedBox()
              : Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 29.h,
                    width: 91.w,
                    decoration: const BoxDecoration(
                        // color: buttonColor,
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    )),
                    child: Center(
                      child: Text(
                        "Annuler".toUpperCase(),
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                            color: buttonColor,
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
