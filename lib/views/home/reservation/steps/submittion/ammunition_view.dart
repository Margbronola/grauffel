import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';

import '../../../../../app/global.dart';
import '../../../../shared/color.dart';
import '../../../../shared/customButton.dart';
import '../../../../shared/ui_helper.dart';
import 'ammunition_viewModel.dart';

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
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => model.isBusy
          ? const StepeShimmerLoader()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      children: [
                        model.haveorderedGuns
                            ? Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      "Recommandé avec l'arme",
                                      style: ThemeData()
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'ProductSans',
                                          ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 140,
                                    width: size(context).width,
                                    child: GridView.count(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10,
                                      crossAxisCount: 1,
                                      childAspectRatio: 1,
                                      children: List.generate(
                                          model
                                              .gunAmmunitionRecommended()
                                              .length, (index) {
                                        return amminitionCard(
                                            index: index,
                                            ammunition: model
                                                    .gunAmmunitionRecommended()[
                                                index],
                                            model: model);
                                      }),
                                    ),
                                  ),
                                ],
                              )
                            : const SizedBox(),
                        verticalSpaceSmall(),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            model.haveorderedGuns
                                ? "D'autres choix"
                                : "Choisissez vos munitions",
                            style: ThemeData().textTheme.bodyText1!.copyWith(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: model.filterMarqueIsActive
                                        ? buttonColor.withOpacity(0.3)
                                        : kcWhite,
                                    side: BorderSide(
                                        color: model.filterMarqueIsActive
                                            ? buttonColor
                                            : greyLight) //<-- SEE HERE
                                    ),
                                onPressed: model.marqueFilter,
                                child: Row(
                                  children: [
                                    Text(
                                      'Marque',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'ProductSans',
                                          fontSize: 15.sp),
                                    ),
                                    model.filterMarqueIsActive
                                        ? Row(
                                            children: [
                                              horizontalSpaceSmall(),
                                              GFBadge(
                                                shape: GFBadgeShape.circle,
                                                color: buttonColor,
                                                child: Text(model
                                                    .filterMarqueLength
                                                    .toString()),
                                              ),
                                            ],
                                          )
                                        : const SizedBox(),
                                  ],
                                )),
                            horizontalSpaceSmall(),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: model.filterCaliberIsActive
                                        ? buttonColor.withOpacity(0.3)
                                        : kcWhite,
                                    side: BorderSide(
                                        color: model.filterCaliberIsActive
                                            ? buttonColor
                                            : greyLight) //<-- SEE HERE
                                    ),
                                onPressed: model.caliberFilter,
                                child: Row(
                                  children: [
                                    Text(
                                      'Calibre',
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        color: backgroundColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'ProductSans',
                                      ),
                                    ),
                                    model.filterCaliberIsActive
                                        ? Row(
                                            children: [
                                              horizontalSpaceSmall(),
                                              GFBadge(
                                                shape: GFBadgeShape.circle,
                                                color: buttonColor,
                                                child: Text(model
                                                    .filterCaliberIsActiveLength
                                                    .toString()),
                                              ),
                                            ],
                                          )
                                        : const SizedBox(),
                                  ],
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Container(
                            child: GridView.count(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              crossAxisCount: 2,
                              children: List.generate(model.ammunitions!.length,
                                  (index) {
                                return amminitionCard(
                                    index: index,
                                    ammunition: model.ammunitions![index],
                                    model: model);
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                      CustomButton(title: "Suivant", onTap: onTap)
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
                          fit: BoxFit.fitHeight,
                          opacity: 0.2,
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
