import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/global.dart';
import '../../color.dart';

class SuccesReservation extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const SuccesReservation({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: kcWhite,
        child: Stack(
          children: [
            Positioned(
              top: 20.h,
              right: 10.w,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  imageSmallLogo,
                  color: buttonColor,
                  width: size(context).width / 2,
                  height: size(context).width / 1,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: size(context).height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceLarge(),
                  // Image.asset(
                  //   "assets/images/calendar.png",
                  //   width: 38.w,
                  //   height: 38.h,
                  // ),
                  verticalSpaceSmall(),
                  Text(
                    "Votre demande réservation a bien été prise en compte. EG-CZ Academy reviendra vers vous pour organiser cette réservation.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProductSans',
                    ),
                  ),
                  // const Spacer(),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: CustomButton(
                  //       title: "voir mes réservations".toUpperCase(),
                  //       onTap: () {
                  //         completer!(DialogResponse(confirmed: true));
                  //       }),
                  // ),
                  // verticalSpaceLarge(),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }
}
