import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/color.dart';

class DocumentCardView extends StatelessWidget {
  final Function() onTap;
  final Color? bgColor;
  final Color? cardColor;
  const DocumentCardView({
    Key? key,
    required this.onTap,
    this.bgColor = docBackground,
    this.cardColor = kcWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65.h,
        color: bgColor,
        child: Card(
          elevation: 2,
          color: cardColor,
          child: Padding(
            padding: EdgeInsets.only(top: 6.h, right: 25.w, left: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ajouter",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            color: buttonColor,
                            fontSize: 12.sp,
                          ),
                    ),
                    Text(
                      "Pièce d'identité / passeport",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            color: backgroundColor,
                            fontSize: 15.sp,
                          ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/docfile.png",
                  height: 30.h,
                  width: 23.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
