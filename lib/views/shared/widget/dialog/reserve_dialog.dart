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
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kcWhite, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: size(context).height / 2.7.h,
          width: 334.w,
          child: Column(
            children: [
              verticalSpaceLarge(),
              Image.asset(
                "assets/images/calendar.png",
                width: 38.w,
                height: 38.h,
              ),
              verticalSpaceMedium(),
              Text(
                "Votre réservation ",
                style: TextStyle(fontSize: 22.sp),
              ),
              Text(
                "PAS DE TIR ",
                style: TextStyle(fontSize: 22.sp, color: buttonColor),
              ),
              Text(
                "a été enregistrée !",
                style: TextStyle(fontSize: 22.sp),
              ),
              verticalSpaceLarge(),
              Text(
                "Votre solde visible sur le site internet va être débité.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomButton(title: "mes disponibilités", onTap: () {})
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
              icon: Icon(
                Icons.close,
                color: Colors.grey,
              ),
            )),
      ],
    ));
  }
}
