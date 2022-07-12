import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../../../../models/gunModel/gun_model.dart';
import '../../../../../shared/color.dart';
import '../../../../../shared/customButton.dart';
import '../../../../../shared/ui_helper.dart';
import 'armore_viewModel.dart';

class ArmoreView extends StatelessWidget {
  const ArmoreView({Key? key}) : super(key: key);

  get kcWhite => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ArmoreViewModel>.reactive(
      onModelReady: (model) async => model.init(),
      builder: (context, model, child) => model.isBusy
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kcWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 0.75), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                      child: Text(
                    "Choix de l'arme",
                    style: ThemeData()
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  )),
                ),
                verticalSpaceMedium(),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: List.generate(model.guns!.length, (index) {
                      return gunCardView(
                          index: index,
                          gunModel: model.guns![index],
                          model: model);
                    }),
                  ),
                ),
                Text(
                  "Continuer sans arme",
                  style: ThemeData()
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 15.sp, color: buttonColor),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    width: 354.w,
                    child: CustomButton(title: "Suivant", onTap: () {}))
              ],
            ),
      viewModelBuilder: () => ArmoreViewModel(),
    );
  }
}

Widget gunCardView(
        {required ArmoreViewModel model,
        required GunModel gunModel,
        required int index}) =>
    GestureDetector(
      onTap: () {
        model.showDetails(index);
      },
      child: Container(
        decoration: BoxDecoration(
            border: model.selectedIndex == index
                ? Border.all(color: buttonColor, width: 2)
                : null,
            color: greyLighter,
            borderRadius: BorderRadius.circular(5)),
        width: 161.w,
        height: 167.h,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 97.w,
                  height: 77.h,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30)),
                      color: kcWhite,
                      image: DecorationImage(
                          image: gunModel.image == null
                              ? const AssetImage("assets/images/gun.png")
                                  as ImageProvider
                              : const NetworkImage(""))),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    gunModel.brand!.name!,
                    overflow: TextOverflow.ellipsis,
                    style: ThemeData()
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
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
                  "Marque",
                  style: ThemeData().textTheme.bodyText1!.copyWith(
                        fontSize: 10.sp,
                      ),
                ),
                Text(
                  "CZ",
                  style: ThemeData()
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 10.sp, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
