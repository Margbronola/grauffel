import 'package:flutter/material.dart';
import 'package:egczacademy/models/reserve_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color.dart';
import '../ui_helper.dart';

class ReserveCard extends StatelessWidget {
  ReserveModel reserve;
  ReserveCard({
    Key? key,
    required this.reserve,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 2,
          color: kcWhite,
          child: Row(
            children: [
              Image.asset(
                "assets/images/${reserve.image}.png",
                height: 131.h,
                width: 110.w,
              ),
              horizontalSpaceMedium(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reserve.title,
                      style: ThemeData()
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18.sp, color: buttonColor),
                    ),
                    Text(
                      reserve.description,
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 12.sp,
                          ),
                    ),
                  ],
                ),
              ),
              horizontalSpaceMedium(),
            ],
          ),
        ),
      ),
    );
  }
}
