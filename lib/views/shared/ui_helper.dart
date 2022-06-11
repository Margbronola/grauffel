import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double _verticalSpaceSmall = 20.0.h;
double _verticalSpaceMedium = 30.0.h;
double _verticalSpaceLarge = 60.0.h;

// Horizontal spacing constants. Adjust to your liking.
double _horizontalSpaceSmall = 10.0.w;
double _horizontalSpaceMedium = 20.0.w;
double _horizontalSpaceLarge = 60.0.w;

/// Returns a vertical space with height set to [_VerticalSpaceSmall]
Widget verticalSpaceSmall() {
  return verticalSpace(_verticalSpaceSmall);
}

/// Returns a vertical space with height set to [_verticalSpaceMedium]
Widget verticalSpaceMedium() {
  return verticalSpace(_verticalSpaceMedium);
}

/// Returns a vertical space with height set to [_verticalSpaceLarge]
Widget verticalSpaceLarge() {
  return verticalSpace(_verticalSpaceLarge);
}

/// Returns a vertical space equal to the [height] supplied
Widget verticalSpace(double height) {
  return Container(height: height);
}

/// Returns a vertical space with height set to [_HorizontalSpaceSmall]
Widget horizontalSpaceSmall() {
  return horizontalSpace(_horizontalSpaceSmall);
}

/// Returns a vertical space with height set to [_HorizontalSpaceMedium]
Widget horizontalSpaceMedium() {
  return horizontalSpace(_horizontalSpaceMedium);
}

/// Returns a vertical space with height set to [HorizontalSpaceLarge]
Widget horizontalSpaceLarge() {
  return horizontalSpace(_horizontalSpaceLarge);
}

/// Returns a vertical space equal to the [width] supplied
Widget horizontalSpace(double width) {
  return Container(width: width);
}

Size size(context) => MediaQuery.of(context).size;
