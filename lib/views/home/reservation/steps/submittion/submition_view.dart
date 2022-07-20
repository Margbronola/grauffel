import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../../../../shared/color.dart';
import '../../../../shared/customButton.dart';
import '../../../../shared/ui_helper.dart';
import 'submition_viewModel.dart';

class SubmitionView extends StatelessWidget {
  const SubmitionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubmitionViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: kcWhite,
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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    verticalSpaceMedium(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    fontSize: 15.sp),
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceMedium(),
                    itemCard("gun"),
                    verticalSpaceSmall(),
                    itemCard("bullet"),
                    verticalSpaceMedium(),
                    SizedBox(
                        width: 310.w,
                        child: Text("Commentaire*",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp))),
                    Container(
                      width: 310.w,
                      height: 120.h,
                      color: greyLighter2,
                    ),
                    verticalSpaceMedium(),
                    SizedBox(
                        width: 310.w,
                        child: CustomButton(
                            title: "Réserversss", onTap: model.showCard)),
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
                ),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SubmitionViewModel(),
    );
  }

  Widget itemCard(String image) => Container(
        width: 310.w,
        height: 95.h,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: greyLighter,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 97.w,
              height: 77.h,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomRight: Radius.circular(30)),
                  color: kcWhite,
                  image: DecorationImage(
                      image: AssetImage("assets/images/$image.png"))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Text(
                    "Glock 19 Gen 5",
                    overflow: TextOverflow.ellipsis,
                    style: ThemeData()
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Référence",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "SH2-BUSH-CER",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Référence",
                  style: ThemeData()
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 10.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  "SH2-BUSH-CER",
                  style: ThemeData()
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 10.sp, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      );
}
