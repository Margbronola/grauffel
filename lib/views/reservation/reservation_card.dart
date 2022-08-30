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
  final Function()? onTap;
  const ReservationCard({
    Key? key,
    required this.booking,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: isActive ? 5 : null,
          color: isActive ? Colors.white : Colors.white60,
          child: Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      width: 80.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${DateFormat('E').format(booking.start!).i18n().toUpperCase()}.",
                            textAlign: TextAlign.center,
                            style:
                                ThemeData().textTheme.headlineSmall!.copyWith(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.bold,
                                      color: buttonColor,
                                      fontSize: 14.sp,
                                    ),
                          ),
                          Text(
                            "${DateFormat('dd').format(booking.start!)} ${DateFormat('MMM').format(booking.start!).toUpperCase()}",
                            textAlign: TextAlign.center,
                            style:
                                ThemeData().textTheme.headlineSmall!.copyWith(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.bold,
                                      color: buttonColor,
                                      fontSize: 18.sp,
                                    ),
                          ),
                          verticalSpaceSmall(),
                          Text(
                            "${booking.start!.hour}h${booking.start!.minute.toString().length > 1 ? booking.start!.minute : ("0${booking.start!.minute}")}",
                            style: ThemeData()
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'ProductSans',
                                    color: backgroundColor,
                                    fontSize: 16.sp),
                          ),
                          Text(
                            "${booking.end!.hour}h${booking.end!.minute.toString().length > 1 ? booking.end!.minute : ("0${booking.end!.minute}")}",
                            style: ThemeData()
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'ProductSans',
                                    color: backgroundColor,
                                    fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: buttonColor,
                      height: size(context).height,
                      width: 3,
                    ),
                    horizontalSpaceMedium(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${booking.name}".toUpperCase(),
                            style: ThemeData()
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: buttonColor,
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            booking.activity != null
                                ? booking.activity!.description ?? ""
                                : "",
                            style:
                                ThemeData().textTheme.headlineSmall!.copyWith(
                                      color: Colors.grey,
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            maxLines: 3,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              !isActive
                  ? const SizedBox()
                  : Positioned(
                      bottom: 15,
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
                            style: ThemeData()
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: buttonColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
