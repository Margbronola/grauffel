import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/color.dart';
import '../../../shared/customButton.dart';
import '../../../shared/ui_helper.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 351.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              verticalSpaceMedium(),
              Text(
                "Les activités du moment",
                style: ThemeData()
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              card(title: "Tir indoor"),
              card(title: "Tir précision"),
              card(title: "Fun Shoot"),
              card(title: "Tir sportif")
            ],
          ),
        ),
        verticalSpaceMedium(),
        Container(
            width: 124.w, child: CustomButton(title: "Suivant", onTap: () {}))
      ],
    );
  }

  Widget card({required String title}) => Container(
      height: 48.h,
      width: 351.w,
      child: Card(
        elevation: 2,
        color: kcWhite,
        child: Center(
            child: Text(
          title,
          style: ThemeData()
              .textTheme
              .headlineSmall!
              .copyWith(fontSize: 15.sp, fontWeight: FontWeight.bold),
        )),
      ));
}
