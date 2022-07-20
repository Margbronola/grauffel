import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color? color;
  final Color? textColor;
  const CustomButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.color,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 188.w,
      height: 46.h,
      child: MaterialButton(
        color: color ?? buttonColor,
        onPressed: onTap,
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
              color: textColor ?? kcWhite,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              fontSize: 13.sp),
        ),
      ),
    );
  }
}
