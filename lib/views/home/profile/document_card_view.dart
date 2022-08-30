import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:egczacademy/models/document_type_model.dart';
import '../../shared/color.dart';

class DocumentCardView extends StatelessWidget {
  final Function() onTap;
  final DocumentTypeModel documentTypeModel;

  final bool isNEw;
  final bool isValid;
  final bool status;
  final bool isViewed;
  final bool removeIcon;
  final String expiration;
  final Color? cardColor;
  final bool isProcess;
  const DocumentCardView({
    Key? key,
    required this.onTap,
    required this.documentTypeModel,
    this.isNEw = false,
    this.isValid = false,
    this.isViewed = false,
    this.removeIcon = false,
    this.expiration = "",
    this.status = false,
    this.isProcess = false,
    this.cardColor = kcWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 65.h,
        child: Card(
          elevation: 2,
          color: cardColor,
          child: Padding(
            padding: EdgeInsets.only(top: 6.h, right: 25.w, left: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      !isProcess
                          ? "Ajouter"
                          : isViewed
                              ? isValid
                                  ? "Validé ($expiration)"
                                  : "Refusé ($expiration)"
                              : "En cours de validation",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            color: buttonColor,
                            fontSize: 12.sp,
                          ),
                    ),
                    Text(
                      documentTypeModel.name!,
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            color: backgroundColor,
                            fontSize: 15.sp,
                          ),
                    ),
                  ],
                ),
                removeIcon
                    ? const SizedBox()
                    : isValid
                        ? isProcess
                            ? DateTime.parse(expiration)
                                    .toUtc()
                                    .subtract(const Duration(days: 30))
                                    .isAfter(DateTime.now().toUtc())
                                ? const Icon(
                                    Icons.check_circle_outline_sharp,
                                    color: buttonColor,
                                  )
                                : warning()
                            : const Icon(
                                Icons.check_circle_outline_sharp,
                                color: buttonColor,
                              )
                        : isProcess
                            ? DateTime.parse(expiration)
                                    .toUtc()
                                    .subtract(const Duration(days: 30))
                                    .isAfter(DateTime.now().toUtc())
                                ? Image.asset(
                                    "assets/images/docfile.png",
                                    height: 30.h,
                                    width: 23.w,
                                  )
                                : warning()
                            : Image.asset(
                                "assets/images/docfile.png",
                                height: 30.h,
                                width: 23.w,
                              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget warning() => Row(
      children: [
        Image.asset(
          "assets/images/warning.png",
          height: 30.h,
          width: 23.w,
        ),
        Text(
          "Bientôt\nexpiré",
          textAlign: TextAlign.end,
          style: TextStyle(
              color: Colors.red, fontSize: 12.sp, fontWeight: FontWeight.bold),
        )
      ],
    );
