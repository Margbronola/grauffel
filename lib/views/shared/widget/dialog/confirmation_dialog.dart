import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../color.dart';
import '../../custom_button.dart';

class ConfirmationDialog extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const ConfirmationDialog({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kcWhite, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
          height: 240.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  request!.additionalButtonTitle == null
                      ? const SizedBox()
                      : request!.additionalButtonTitle == "warning"
                          ? Icon(
                              Icons.warning,
                              color: Colors.yellow[600],
                            )
                          : const SizedBox(),
                  horizontalSpaceSmall(),
                  Text(
                    request!.title ?? "",
                    style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  //this one is for icon
                ],
              ),
              verticalSpaceMedium(),
              Text(
                request!.description ?? "",
                style: TextStyle(fontFamily: 'ProductSans', fontSize: 18.sp),
              ),
              const Spacer(),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    request!.secondaryButtonTitle != null
                        ? SizedBox(
                            width: 110.w,
                            child: MaterialButton(
                              onPressed: () {
                                completer!(DialogResponse(confirmed: false));
                              },
                              child: Text(
                                request!.secondaryButtonTitle ?? "",
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    const Spacer(),
                    SizedBox(
                      width: 160.w,
                      child: CustomButton(
                          title: request!.mainButtonTitle ?? "",
                          onTap: () {
                            completer!(DialogResponse(confirmed: true));
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
