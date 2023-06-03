import 'package:egczacademy/views/shared/widget/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/global.dart';
import 'color.dart';

class SocialButton extends StatelessWidget {
  final Function() fbTap;
  final Function() instaTap;
  final Function() logoTap;
  const SocialButton({
    Key? key,
    required this.fbTap,
    required this.instaTap,
    required this.logoTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(
                onTap: fbTap,
                child: Row(
                  children: [
                    Image.asset(
                      fbLogo,
                      height: 30.h,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "Facebook",
                      style: TextStyle(color: kcWhite),
                    )
                  ],
                ),
              ),
              // customDivider(),
              // CircleButton(
              //   onTap: logoTap,
              //   child: Image.asset(
              //     imageSmallLogo,
              //   ),
              // ),
              // customDivider(),
              // CircleButton(
              //   onTap: instaTap,
              //   child: Image.asset(
              //     instaLogo,
              //     height: 30.h,
              //   ),
              // )
            ],
          ),
        ),
      ],
    );
  }

  Widget customDivider() => SizedBox(
        height: 30.h,
        child: const VerticalDivider(
          color: kcWhite,
          thickness: 1.5,
        ),
      );
}
