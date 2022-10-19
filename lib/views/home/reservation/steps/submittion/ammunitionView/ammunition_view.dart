import 'package:egczacademy/views/home/reservation/steps/submittion/ammunitionView/ammunition_view_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';

import '../../../../../shared/color.dart';
import '../../../../../shared/custom_button.dart';
import '../../../../../shared/ui_helper.dart';
import 'ammunition_view_list.dart';
import 'ammunition_view_model.dart';

class AmmunitionView extends StatelessWidget {
  final Function() onTap;
  final Function() skipTap;

  //TODO: dont select any if skip
  const AmmunitionView({
    Key? key,
    required this.onTap,
    required this.skipTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AmmunitionViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => model.isBusy
          ? const StepeShimmerLoader()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                model.loader
                    ? const Expanded(
                        child: Center(
                        child: CircularProgressIndicator(),
                      ))
                    : Expanded(
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: model.pageController,
                          onPageChanged: model.nextIndex,
                          children: <Widget>[
                            AmmunitionViewList(model: model),
                            AmmunitionViewQuantity(model: model)
                          ],
                        ),
                      ),
                const Divider(
                  color: greyLight,
                  thickness: 1,
                  height: 1,
                ),
                verticalSpaceSmall(),
                Padding(
                  padding: EdgeInsets.only(left: 45.w, right: 45.w, bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          skipTap();
                        },
                        child: Center(
                          child: Text(
                            "J’ai déjà des\nmunitions".toUpperCase(),
                            style: ThemeData().textTheme.bodyText1!.copyWith(
                                fontSize: 15.sp,
                                color: Colors.grey,
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      CustomButton(
                          title: "Suivant",
                          onTap: model.selectedAmmunition.isNotEmpty
                              ? () {
                                  model.suivant(onTap);
                                }
                              : null)
                    ],
                  ),
                )
              ],
            ),
      viewModelBuilder: () => AmmunitionViewModel(),
    );
  }
}
