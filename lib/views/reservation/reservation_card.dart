// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:localization/localization.dart';
import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';

class ReservationCard extends StatefulWidget {
  final BookingModel booking;
  final bool isActive;
  final Function()? onTap;
  final Function()? cancelBook;

  const ReservationCard({
    Key? key,
    required this.booking,
    this.isActive = false,
    required this.onTap,
    required this.cancelBook,
  }) : super(key: key);

  @override
  State<ReservationCard> createState() => _ReservationCardState();
}

class _ReservationCardState extends State<ReservationCard> {
  String dateFormat(String date) {
    DateTime dateFormated = DateTime.parse(date);
    final DateFormat formatter = DateFormat('MMMM');
    final String formattedMonth = formatter.format(dateFormated);

    return "${dateFormated.day} $formattedMonth ${dateFormated.year}";
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Card(
          elevation: widget.isActive ? 5 : null,
          color: widget.isActive ? Colors.white : Colors.white60,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
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
                            "${DateFormat('E').format(widget.booking.start!).i18n().toUpperCase()}.",
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
                            "${DateFormat('dd').format(widget.booking.start!)} ${DateFormat('MMM').format(widget.booking.start!).toUpperCase()}",
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
                            "${widget.booking.start!.hour}h${widget.booking.start!.minute.toString().length > 1 ? widget.booking.start!.minute : ("0${widget.booking.start!.minute}")}",
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
                            "${widget.booking.end!.hour}h${widget.booking.end!.minute.toString().length > 1 ? widget.booking.end!.minute : ("0${widget.booking.end!.minute}")}",
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${widget.booking.name}".toUpperCase(),
                            overflow: TextOverflow.clip,
                            maxLines: 2,
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
                          widget.booking.bookable!.description == null
                              ? FittedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.calendar_month,
                                            color: buttonColor,
                                          ),
                                          horizontalSpaceSmall(),
                                          Text(
                                            "du ${dateFormat(widget.booking.start.toString())} au ${dateFormat(widget.booking.end.toString())}",
                                            overflow: TextOverflow.clip,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : Text(
                                  removeHtmlTags(
                                      widget.booking.bookable!.description),
                                  overflow: TextOverflow.fade,
                                  style: ThemeData()
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Colors.grey,
                                        fontFamily: 'ProductSans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                  maxLines: 4,
                                )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              !widget.isActive
                  ? const SizedBox()
                  : Positioned(
                      bottom: 3,
                      right: 0,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            widget.cancelBook!();
                          },
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
