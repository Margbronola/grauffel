import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';

import '../../../../../../app/global.dart';
import '../../../../../../models/gunModel/gun_model.dart';
import '../../../../../shared/color.dart';
import '../../../../../shared/customButton.dart';
import '../../../../../shared/ui_helper.dart';
import 'armore_viewModel.dart';

class ArmoreView extends StatelessWidget {
  final Function() onTap;
  final Function() skipTap;
  const ArmoreView({
    Key? key,
    required this.onTap,
    required this.skipTap,
  }) : super(key: key);

  get kcWhite => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ArmoreViewModel>.reactive(
      onModelReady: (model) async => model.init(),
      builder: (context, model, child) => model.loader
          ? const StepeShimmerLoader()
          : Column(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Choisissez votre arme",
                            style: ThemeData().textTheme.bodyText1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 24.sp,
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
                                        fontSize: 15.sp,
                                        fontFamily: 'ProductSans',
                                        letterSpacing: 1.2,
                                      ),
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
                                        color: backgroundColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        fontFamily: 'ProductSans',
                                        letterSpacing: 1.2,
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
                              children:
                                  List.generate(model.guns!.length, (index) {
                                return gunCardView(
                                    index: index,
                                    gunModel: model.guns![index],
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
                        child: Text(
                          "j'ai déjá\nune arme".toUpperCase(),
                          style: ThemeData().textTheme.bodyText1!.copyWith(
                              fontSize: 15.sp,
                              color: Colors.grey,
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CustomButton(
                          title: "Suivant",
                          onTap: model.selectedGun.isNotEmpty
                              ? () {
                                  onTap();
                                }
                              : null)
                    ],
                  ),
                )
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
        model.selectCard(gunModel);
      },
      child: Container(
        decoration: BoxDecoration(
            border: model.selectedGun.contains(gunModel)
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
                          opacity: gunModel.image == null ? 0.1 : 1,
                          image: gunModel.image == null
                              ? const AssetImage("assets/images/noImage.png")
                                  as ImageProvider
                              : CachedNetworkImageProvider(
                                  "$urlServer/${gunModel.image!.path}/${gunModel.image!.filename}"))),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    gunModel.model!,
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
                      gunModel.brand!.name!,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Calibre",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                    Text(
                      gunModel.caliber!.name!,
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
