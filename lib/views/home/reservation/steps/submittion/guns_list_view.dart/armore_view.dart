import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stacked/stacked.dart';

import '../../../../../../models/gunModel/gun_model.dart';
import '../../../../../shared/color.dart';
import '../../../../../shared/customButton.dart';
import '../../../../../shared/ui_helper.dart';
import 'armore_viewModel.dart';

class ArmoreView extends StatelessWidget {
  final Function() onTap;
  const ArmoreView({
    Key? key,
    required this.onTap,
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
                            "Choix de l'arme",
                            style: ThemeData().textTheme.bodyText1!.copyWith(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                        verticalSpaceSmall(),
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
                                onPressed: model.goToFilterGunView,
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
                                    side: const BorderSide(
                                        color: greyLight) //<-- SEE HERE
                                    ),
                                onPressed: model.goToFilterGunView,
                                child: const Text(
                                  'Calibre',
                                  style: TextStyle(color: backgroundColor),
                                )),
                          ],
                        ),
                        verticalSpaceSmall(),
                        Expanded(
                          child: GridView.count(
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 20,
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
            border: model.selectedIndex == null
                ? null
                : model.selectedIndex == index
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
                              : NetworkImage(
                                  "$urlServer/${gunModel.image!.path}/${gunModel.image!.filename}"))),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    gunModel.description!,
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
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      gunModel.brand!.name!,
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
                      gunModel.caliber!.name!,
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
