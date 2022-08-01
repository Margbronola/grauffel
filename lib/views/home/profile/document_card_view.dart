import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:egczacademy/models/document_type_model.dart';
import '../../shared/color.dart';

class DocumentCardView extends StatelessWidget {
  final Function() onTap;
  final DocumentTypeModel documentTypeModel;
  final Color? bgColor;
  final bool isNEw;
  final bool isValid;
  final bool isViewed;
  final String expiration;
  final Color? cardColor;
  const DocumentCardView({
    Key? key,
    required this.onTap,
    required this.documentTypeModel,
    this.bgColor = docBackground,
    this.isNEw = false,
    this.isValid = false,
    this.isViewed = false,
    this.expiration = "",
    this.cardColor = kcWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65.h,
        color: bgColor,
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
                      expiration == ""
                          ? "Ajouter"
                          : isValid
                              ? "Validé ($expiration)"
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
                isValid
                    ? const Icon(
                        Icons.check_circle_outline_sharp,
                        color: buttonColor,
                      )
                    : DateTime.parse('1974-03-20 00:00:00.000')
                            .isBefore(DateTime.now())
                        ? Image.asset(
                            "assets/images/docfile.png",
                            height: 30.h,
                            width: 23.w,
                          )
                        : Image.asset(
                            "assets/images/warning.png",
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
