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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: size(context).height / 2.7.h,
              width: 334.w,
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
                  const Text(
                    "Votre réservation ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "PAS DE TIR 25 mètres",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: buttonColor,
                        fontSize: 21.sp),
                  ),
                  const Text(
                    "a été enregistrée !",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  verticalSpaceLarge(),
                  Text(
                    "Votre solde visible sur le site internet va être débité.",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                        title: "voir mes réservations".toUpperCase(),
                        onTap: () {}),
                  ),
                  verticalSpaceLarge(),
                ],
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                )),
          ],
        ));
  }
}
