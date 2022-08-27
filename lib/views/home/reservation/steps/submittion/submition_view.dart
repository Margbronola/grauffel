import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../../../../shared/color.dart';
import '../../../../shared/customButton.dart';
import '../../../../shared/ui_helper.dart';
import '../../../../shared/validator.dart';
import '../../../../shared/widget/itemCard.dart';
import 'submition_viewModel.dart';

class SubmitionView extends StatelessWidget {
  const SubmitionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubmitionViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 70.h,
                decoration: const BoxDecoration(color: kcWhite, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 4))
                ]),
                child: Center(
                  child: Text(
                    "Récapitulatif".toUpperCase(),
                    style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProductSans',
                        ),
                  ),
                ),
              ),
              verticalSpaceSmall(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/cross.png",
                              width: 27.w,
                            ),
                            verticalSpaceSmall(),
                            Text(
                              model.bookedModel.name!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 13.sp),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/calendar.png",
                              width: 27.w,
                            ),
                            verticalSpaceSmall(),
                            Text(
                              model.date(),
                              style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/time.png",
                              width: 27.w,
                            ),
                            verticalSpaceSmall(),
                            Text(
                              model.time(),
                              style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceMedium(),
                    //GunList
                    Column(
                        children: model.gunList
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  child: ItemCard(
                                    image: "",
                                    title: e.model!,
                                    brand: e.brand!.name!,
                                    reference: "Référence",
                                  ),
                                ))
                            .toList()),

                    Column(
                        children: model.ammunitionList
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  child: ItemCard(
                                    extraButton: e.perBox.toString(),
                                    image: "",
                                    title: e.name!,
                                    brand: e.brand!.name!,
                                    reference: "Référence",
                                  ),
                                ))
                            .toList()),
                    Column(
                        children: model.equipmentList
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  child: ItemCard(
                                    image: "",
                                    title: e.name!,
                                    brand: e.type.toString(),
                                    reference: "Référence",
                                  ),
                                ))
                            .toList()),
                    TextFormField(
                      maxLines: 3,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: backgroundColor, fontSize: 10.sp),
                      focusNode: model.commentFocusNode,
                      controller: model.commentTextController,
                      validator: (value) {
                        return Validator.validateName(value ?? "");
                      },
                      decoration: InputDecoration(
                        label: RichText(
                            text: TextSpan(
                                text: 'Commentaire',
                                style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    color: model.isCommentFucos
                                        ? Colors.grey
                                        : Colors.black,
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.w700),
                                children: const [
                              TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                    color: buttonColor,
                                  ))
                            ])),
                        fillColor: Colors.black,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintStyle: const TextStyle(color: backgroundColor),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: backgroundColor),
                        ),
                        isDense: true,
                      ),
                    ),
                    verticalSpaceMedium(),
                    SizedBox(
                        width: 310.w,
                        child: CustomButton(
                            title: "Réserver", onTap: model.showCard)),
                    verticalSpaceSmall(),
                    SizedBox(
                        width: 310.w,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Annuler".toUpperCase(),
                              style: const TextStyle(color: buttonColor),
                            ))),
                    verticalSpaceMedium()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SubmitionViewModel(),
    );
  }
}
