import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../services/global.dart';
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
              ElevatedButton(
                onPressed: fbTap,
                child: Center(
                  child: Image.asset(
                    fbLogo,
                    height: 30.h,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(5),
                  primary: Colors.transparent, // <-- Button color
                  onPrimary: Colors.white10, // <-- Splash color
                ),
              ),
              VerticalDivider(
                color: kcWhite,
                thickness: 2,
              ),
              ElevatedButton(
                onPressed: logoTap,
                child: Center(
                  child: Image.asset(
                    imageSmallLogo,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(8),
                  primary: Colors.transparent, // <-- Button color
                  onPrimary: Colors.white10, // <-- Splash color
                ),
              ),
              VerticalDivider(
                color: kcWhite,
                thickness: 2,
              ),
              ElevatedButton(
                onPressed: instaTap,
                child: Center(
                  child: Image.asset(
                    instaLogo,
                    height: 30.h,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(5),
                  primary: Colors.transparent, // <-- Button color
                  onPrimary: Colors.white10, // <-- Splash color
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Copyright © 2022 EG-CZ ACADEMY",
          style: TextStyle(color: kcWhite, fontSize: 10.sp),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
