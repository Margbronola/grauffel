import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../color.dart';

class StepeShimmerLoader extends StatelessWidget {
  const StepeShimmerLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: greyLighter2,
            highlightColor: Colors.white,
            child: Container(
              height: 20,
              width: 200.w,
              color: Colors.white,
            ),
          ),
          verticalSpaceMedium(),
          SizedBox(
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 100.w,
                    height: 50.h,
                    color: Colors.white,
                  ),
                ),
                horizontalSpaceSmall(),
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 100.w,
                    height: 50.h,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceMedium(),
          SizedBox(
            height: 161.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 161.w,
                    height: 161.h,
                    color: Colors.white,
                  ),
                ),
                horizontalSpaceSmall(),
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 161.w,
                    height: 161.h,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceSmall(),
          SizedBox(
            height: 161.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 161.w,
                    height: 161.h,
                    color: Colors.white,
                  ),
                ),
                horizontalSpaceSmall(),
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 161.w,
                    height: 161.h,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceSmall(),
          SizedBox(
            height: 161.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 161.w,
                    height: 161.h,
                    color: Colors.white,
                  ),
                ),
                horizontalSpaceSmall(),
                Shimmer.fromColors(
                  baseColor: greyLighter2,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 161.w,
                    height: 161.h,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
