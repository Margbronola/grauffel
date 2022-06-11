import 'package:flutter/material.dart';

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
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        color: color != null ? color : buttonColor,
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
              color: textColor != null ? textColor : kcWhite,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
