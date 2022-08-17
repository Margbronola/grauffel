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
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: kcWhite,
          centerTitle: true,
          title: Text(
            "Récapitulatif".toUpperCase(),
            style: ThemeData()
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 22.sp, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          color: kcWhite,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ListView(
            children: [
              Column(
                children: [
                  verticalSpaceMedium(),
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
                            "25 mètres",
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
                            "sam. 23 mai",
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
                            "10h00 - 11h00",
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
                  const ItemCard(
                    image: "gun",
                    title: "Glock 19 Gen 5",
                    brand: "Marque",
                    reference: "Référence",
                  ),
                  verticalSpaceSmall(),
                  const ItemCard(
                    image: "bullet",
                    title: "9x19 - 9mm",
                    brand: "Marque",
                    reference: "Référence",
                    extraButton: "3 boîtes de 50",
                  ),
                  verticalSpaceMedium(),
                  TextFormField(
                    maxLines: 3,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: backgroundColor, fontSize: 20.sp),
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
                          title: "Réservers", onTap: model.showCard)),
                  verticalSpaceSmall(),
                  SizedBox(
                      width: 310.w,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Annuler".toUpperCase(),
                            style: const TextStyle(color: buttonColor),
                          ))),
                  verticalSpaceMedium(),
                ],
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SubmitionViewModel(),
    );
  }
}
