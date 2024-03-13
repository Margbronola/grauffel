import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/views/shared/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../color.dart';
import '../../ui_helper.dart';

class ReserveFailDialog extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const ReserveFailDialog({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kcWhite,
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            right: 10.w,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                imageSmallLogo,
                color: buttonColor,
                width: size(context).width / 2,
                height: size(context).width / 2,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: size(context).height / 1.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceLarge(),
                Stack(
                  children: [
                    Positioned(
                      top: 4,
                      left: 4,
                      child: Image.asset("assets/images/calendar.png",
                          width: 38.w, height: 38.h, color: Colors.grey),
                    ),
                    Image.asset(
                      "assets/images/topdate.png",
                      color: buttonColor,
                      width: 48.w,
                      height: 48.h,
                    ),
                  ],
                ),
                verticalSpaceSmall(),
                Text(
                  "Impossible de\nfaire une réservation...",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProductSans',
                  ),
                ),
                verticalSpaceLarge(),
                Text(
                  request!.data ?? "",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProductSans',
                  ),
                ),
                Text(
                  "Aucun points de crédit disponibles",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProductSans',
                  ),
                ),
                verticalSpaceSmall(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        title: "Réessayer".toUpperCase(),
                        onTap: () {
                          completer!(DialogResponse(confirmed: true));
                        }),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    completer!(DialogResponse(confirmed: false));
                  },
                  child: Center(
                    child: Text(
                      "Annuler".toUpperCase(),
                    ),
                  ),
                ),
                verticalSpaceSmall(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
