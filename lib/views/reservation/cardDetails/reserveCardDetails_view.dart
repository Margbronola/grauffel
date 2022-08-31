import 'package:egczacademy/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:egczacademy/models/booking_model.dart';

import '../../../app/global.dart';
import '../../shared/color.dart';
import '../../shared/ui_helper.dart';
import '../../shared/widget/itemCard.dart';

class ReserveCardDetails extends StatefulWidget {
  final BookingModel bookingModel;

  final UserModel user;
  const ReserveCardDetails({
    Key? key,
    required this.bookingModel,
    required this.user,
  }) : super(key: key);

  @override
  State<ReserveCardDetails> createState() => _ReserveCardDetailsState();
}

class _ReserveCardDetailsState extends State<ReserveCardDetails> {
  String time() {
    String time1 =
        "${widget.bookingModel.start.toString().split(" ")[1].split(":")[0]}h${widget.bookingModel.start.toString().split(" ")[1].split(":")[1]}";
    String time2 =
        "${widget.bookingModel.end.toString().split(" ")[1].split(":")[0]}h${widget.bookingModel.end.toString().split(" ")[1].split(":")[1]}";
    print("$time1 - $time2");
    return "$time1 - $time2";
  }

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
              widget.user.first_name!,
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
                    Text(
                      widget.bookingModel.name!,
                      style: const TextStyle(
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
                    Text(
                      DateFormat.MMMEd('fr').format(widget.bookingModel.start!),
                      style: const TextStyle(
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
                    Text(
                      time(),
                      style: const TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
            verticalSpaceMedium(),
            //GunList
            Column(
                children: widget.bookingModel.guns!
                    .map((e) => Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: ItemCard(
                            image:
                                "$urlServer/${e.image!.path}/${e.image!.filename}",
                            title: e.model!,
                            brand: e.brand!.name!,
                            reference: "Référence",
                          ),
                        ))
                    .toList()),

            Column(
                children: widget.bookingModel.ammunitions!
                    .map((e) => Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: ItemCard(
                            extraButton: e.perBox.toString(),
                            image:
                                "$urlServer/${e.image!.path}/${e.image!.filename}",
                            title: e.name!,
                            brand: e.brand!.name!,
                            reference: "Référence",
                          ),
                        ))
                    .toList()),
            Column(
                children: widget.bookingModel.equipements!
                    .map((e) => Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: ItemCard(
                            image:
                                "$urlServer/${e.image!.path}/${e.image!.filename}",
                            title: e.name!,
                            brand: e.type.toString(),
                            reference: "Référence",
                          ),
                        ))
                    .toList()),
            verticalSpaceMedium(),
            Text(
              widget.bookingModel.bookable!.description!,
              style: const TextStyle(
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
