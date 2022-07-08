import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../color.dart';
import '../../customButton.dart';
import '../../ui_helper.dart';

class BasicDialog extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const BasicDialog({Key? key, this.request, this.completer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kcWhite, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 260.h,
          child: Column(
            children: [
              Container(
                height: 131.h,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Réservation",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontSize: 22.sp,
                          ),
                    ),
                    Text(
                      "Pas de tir",
                      style: ThemeData()
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 22.sp, color: buttonColor),
                    ),
                  ],
                ),
              ),
              CustomButton(
                  title: "l'activité souhaitée",
                  onTap: () {
                    completer!(DialogResponse(confirmed: true));
                  }),
                  verticalSpaceSmall(),
              CustomButton(
                  title: "mes disponibilités",
                  onTap: () {
                    completer!(DialogResponse(confirmed: false));
                  }),
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
