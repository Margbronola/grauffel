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
              circleButton(
                onTap: fbTap,
                child: Image.asset(
                  fbLogo,
                  height: 30.h,
                ),
              ),
              // customDivider(),
              // circleButton(
              //   onTap: logoTap,
              //   child: Image.asset(
              //     imageSmallLogo,
              //   ),
              // ),
              customDivider(),
              circleButton(
                onTap: instaTap,
                child: Image.asset(
                  instaLogo,
                  height: 30.h,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Copyright © 2022 EG-CZ ACADEMY",
          style: TextStyle(color: kcWhite, fontSize: 10.sp),
        ),
        const SizedBox(
          height: 5,
        )
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

  Widget circleButton({required Widget child, required Function() onTap}) =>
      ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(5),
          primary: Colors.transparent, // <-- Button color
          onPrimary: Colors.white10, // <-- Splash color
        ),
        child: Center(child: child),
      );
}
