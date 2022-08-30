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
        child: SizedBox(
          height: 140.h,
          child: Card(
            elevation: 3,
            color: kcWhite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size(context).height,
                  width: 110.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(
                          reserve.image,
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reserve.title,
                          maxLines: 2,
                          style: ThemeData().textTheme.bodyText1!.copyWith(
                              fontSize: 18.sp,
                              color: buttonColor,
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          reserve.description,
                          style: ThemeData().textTheme.bodyText1!.copyWith(
                                fontSize: 12.sp,
                                fontFamily: 'ProductSans',
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
      ),
    );
  }
}
