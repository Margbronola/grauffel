import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../color.dart';
import '../../ui_helper.dart';

class ReserveDialog extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const ReserveDialog({Key? key, this.request, this.completer})
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
                  width: 200.w,
                  height: 200.h,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: size(context).height / 2.7.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceLarge(),
                  Image.asset(
                    "assets/images/calendar.png",
                    width: 38.w,
                    height: 38.h,
                  ),
                  verticalSpaceSmall(),
                  Text(
                    "Votre réservation ",
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProductSans',
                    ),
                  ),
                  Text(
                    "PAS DE TIR 25 mètres",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: buttonColor,
                        fontFamily: 'ProductSans',
                        fontSize: 22.sp),
                  ),
                  Text(
                    "a été enregistrée !",
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProductSans',
                    ),
                  ),
                  verticalSpaceLarge(),
                  Text(
                    "Votre solde visible sur le\nsite internet va être débité.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProductSans',
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                        title: "voir mes réservations".toUpperCase(),
                        onTap: () {
                          completer!(DialogResponse(confirmed: true));
                        }),
                  ),
                  verticalSpaceLarge(),
                ],
              ),
            ),
          ],
        ));
  }
}
