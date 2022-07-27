import 'package:cached_network_image/cached_network_image.dart';
import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stacked/stacked.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import '../../../../../app/global.dart';
import '../../../../shared/color.dart';
import '../../../../shared/customButton.dart';
import '../../../../shared/ui_helper.dart';
import 'ammunition_viewModel.dart';

class AmmunitionView extends StatelessWidget {
  final Function() onTap;
  const AmmunitionView({
    Key? key,
    required this.onTap,
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
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Choisissez vos munitions".toUpperCase(),
                            style: ThemeData().textTheme.bodyText1!.copyWith(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
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
                                    const Text(
                                      'Marque',
                                      style: TextStyle(color: backgroundColor),
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
                                    const Text(
                                      'Calibre',
                                      style: TextStyle(color: backgroundColor),
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
                        verticalSpaceMedium(),
                        Expanded(
                          child: GridView.count(
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 20,
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
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Continuer sans\narme".toUpperCase(),
                        style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 15.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CustomButton(title: "Suivant", onTap: onTap))
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
                          fit: BoxFit.fitHeight,
                          image: ammunition.image == null
                              ? Image.asset("assets/images/bullet.png")
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
                      "Marque",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                          ),
                    ),
                    Text(
                      ammunition.brand!.name!,
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.info,
                  color: buttonColor,
                ),
                Column(
                  children: [
                    Text(
                      "Calibre",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                          ),
                    ),
                    Text(
                      ammunition.caliber!.name!,
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
