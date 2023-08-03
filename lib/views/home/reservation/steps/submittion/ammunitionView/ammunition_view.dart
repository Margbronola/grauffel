// ignore_for_file: avoid_print

import 'package:egczacademy/views/home/reservation/steps/submittion/ammunitionView/ammunition_view_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

  const AmmunitionView({
    Key? key,
    required this.onTap,
    required this.skipTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AmmunitionViewModel>.reactive(
      onViewModelReady: (model) => model.init(),
      builder: (context, model, child) => model.isBusy
          ? const StepeShimmerLoader()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                model.loader
                    ? const Expanded(
                        child: Center(
                        child: CircularProgressIndicator.adaptive(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.black,
                          ),
                          backgroundColor: Colors.grey,
                        ),
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
                      model.requiredAmmo == false
                          ? TextButton(
                              onPressed: () {
                                print("required ammo == ${model.requiredAmmo}");
                                skipTap();
                              },
                              child: Text(
                                "J’ai déjà des\nmunitions".toUpperCase(),
                                style: ThemeData()
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 15.sp,
                                        color: Colors.grey,
                                        fontFamily: 'ProductSans',
                                        fontWeight: FontWeight.bold),
                              ),
                            )
                          : Container(),
                      CustomButton(
                        title: "Suivant",
                        onTap: model.selectedAmmunition.isNotEmpty
                            ? () {
                                model.suivant(onTap, skipTap);
                              }
                            : () {
                                if (model.requiredAmmo == true) {
                                  print("required");

                                  Fluttertoast.showToast(
                                      msg:
                                          "Besoin de sélectionner les munitions requises");
                                } else {
                                  print("diri required");
                                  skipTap();
                                }
                              },
                      ),
                    ],
                  ),
                )
              ],
            ),
      viewModelBuilder: () => AmmunitionViewModel(),
    );
  }
}
