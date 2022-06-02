import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'color.dart';
class SocialButton extends StatelessWidget {
  const SocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Image.asset("assets/images/fb.png", scale: 0.1, width: 40 ),
                            VerticalDivider(
                          color: kcWhite,
                          thickness: 2,
                          width: 40,
                        ),
                       
                         Image.asset("assets/images/insta.webp", scale: 0.1, width: 40 ),
        
                      ],
                    ),
                  ),
                       verticalSpaceMedium(),
              Text("Copyright © 2022 EG-CZ ACADEMY",)
      ],
    );
  }
}