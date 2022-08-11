import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/global.dart';
import '../../color.dart';
import '../../ui_helper.dart';

class Header extends StatelessWidget {
  final String title;
  final bool showLeading;
  const Header({
    Key? key,
    required this.title,
    this.showLeading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140.h,
        width: size(context).width,
        color: backgroundColor,
        child: Stack(
          children: [
            Positioned(
              left: -50,
              top: -40,
              child: Opacity(
                opacity: 0.4,
                child: Image.asset(
                  imageSmallLogo,
                  color: buttonColor,
                  width: 192.w,
                  height: 192.h,
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title.toUpperCase(),
                    style: TextStyle(
                      color: kcWhite,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProductSans',
                    ),
                  )
                ],
              ),
            ),
            showLeading
                ? Positioned(
                    left: 5,
                    top: 30,
                    child: BackButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ))
                : const SizedBox(),
          ],
        ));
  }
}
