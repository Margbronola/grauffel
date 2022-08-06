import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:egczacademy/models/reserve_model.dart';
import '../color.dart';
import '../ui_helper.dart';

class ReserveCard extends StatelessWidget {
  final ReserveModel reserve;
  final Function() ontap;
  const ReserveCard({
    Key? key,
    required this.reserve,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Card(
          elevation: 3,
          color: kcWhite,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 131.h,
                width: 110.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/${reserve.image}.png",
                        ),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reserve.title,
                        style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 18.sp,
                            color: buttonColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.h,
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
              ),
              horizontalSpaceMedium(),
            ],
          ),
        ),
      ),
    );
  }
}
