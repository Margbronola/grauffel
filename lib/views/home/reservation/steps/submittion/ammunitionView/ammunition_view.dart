import 'package:cached_network_image/cached_network_image.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/ammunitionView/ammunition_view_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';

import '../../../../../../app/global.dart';
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
                Expanded(
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

Widget amminitionCard(
        {required AmmunitionViewModel model,
        required AmmunitionsModel ammunition,
        required int index}) =>
    GestureDetector(
      onTap: () {
        model.selectCard(ammunition);
      },
      child: Container(
        decoration: BoxDecoration(
            border: model.selectedAmmunition.contains(ammunition)
                ? Border.all(color: buttonColor, width: 2)
                : null,
            color: greyLighter,
            borderRadius: BorderRadius.circular(5)),
        width: 161.w,
        height: 167.h,
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 85.w,
                  height: 77.h,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30)),
                      color: kcWhite,
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          opacity: ammunition.image == null ? 0.1 : 1,
                          image: ammunition.image == null
                              ? const AssetImage("assets/images/noImage.png")
                                  as ImageProvider
                              : CachedNetworkImageProvider(
                                  "$urlServer/${ammunition.image!.path}/${ammunition.image!.filename}"))),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    ammunition.name!,
                    overflow: TextOverflow.ellipsis,
                    style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProductSans',
                        ),
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Marque",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                    Text(
                      ammunition.brand!.name!,
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    model.showDetails(index);
                  },
                  child: const Icon(
                    Icons.info,
                    color: buttonColor,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Calibre",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                    Text(
                      ammunition.caliber!.name!,
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
