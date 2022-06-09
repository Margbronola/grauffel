import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double _VerticalSpaceSmall = 20.0.h;
double _VerticalSpaceMedium = 30.0.h;
double _VerticalSpaceLarge = 60.0.h;

// Horizontal spacing constants. Adjust to your liking.
double _HorizontalSpaceSmall = 10.0.w;
double _HorizontalSpaceMedium = 20.0.w;
double HorizontalSpaceLarge = 60.0.w;

/// Returns a vertical space with height set to [_VerticalSpaceSmall]
Widget verticalSpaceSmall() {
  return verticalSpace(_VerticalSpaceSmall);
}

/// Returns a vertical space with height set to [_VerticalSpaceMedium]
Widget verticalSpaceMedium() {
  return verticalSpace(_VerticalSpaceMedium);
}

/// Returns a vertical space with height set to [_VerticalSpaceLarge]
Widget verticalSpaceLarge() {
  return verticalSpace(_VerticalSpaceLarge);
}

/// Returns a vertical space equal to the [height] supplied
Widget verticalSpace(double height) {
  return Container(height: height);
}

/// Returns a vertical space with height set to [_HorizontalSpaceSmall]
Widget horizontalSpaceSmall() {
  return horizontalSpace(_HorizontalSpaceSmall);
}

/// Returns a vertical space with height set to [_HorizontalSpaceMedium]
Widget horizontalSpaceMedium() {
  return horizontalSpace(_HorizontalSpaceMedium);
}

/// Returns a vertical space with height set to [HorizontalSpaceLarge]
Widget horizontalSpaceLarge() {
  return horizontalSpace(HorizontalSpaceLarge);
}

/// Returns a vertical space equal to the [width] supplied
Widget horizontalSpace(double width) {
  return Container(width: width);
}
