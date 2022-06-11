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
      builder: (context, model, child) => Column(
        children: [
          Container(
            height: 76.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kcWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0, 0.75), // changes position of shadow
                ),
              ],
            ),
            child: Center(
                child: Text(
              "Récapitulatif PAS DE TIR",
              style: ThemeData()
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 22.sp, fontWeight: FontWeight.bold),
            )),
          ),
          verticalSpaceMedium(),
          itemCard("gun"),
          verticalSpaceSmall(),
          itemCard("bullet"),
          verticalSpaceMedium(),
          SizedBox(width: 310.w, child: Text("Commentaire*")),
          Container(
            width: 310.w,
            height: 126.h,
            color: greyLighter2,
          ),
          verticalSpaceMedium(),
          SizedBox(
              width: 310.w,
              child: CustomButton(title: "Réserversss", onTap: model.showCard)),
          SizedBox(
              width: 310.w,
              child: CustomButton(
                  color: kcWhite,
                  textColor: buttonColor,
                  title: "Annuler",
                  onTap: () {}))
        ],
      ),
      viewModelBuilder: () => SubmitionViewModel(),
    );
  }

  Widget itemCard(String image) => Container(
        width: 310.w,
        height: 95.h,
        padding: EdgeInsets.all(8),
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
                      BorderRadius.only(bottomRight: Radius.circular(30)),
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
