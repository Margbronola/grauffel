import 'package:egczacademy/views/home/reservation/steps/submittion/ammunitionView/ammunition_view.dart';
import 'package:flutter/material.dart';

import 'package:egczacademy/views/home/reservation/steps/submittion/ammunitionView/ammunition_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

import '../../../../../shared/color.dart';
import '../../../../../shared/ui_helper.dart';

class AmmunitionViewList extends StatelessWidget {
  final AmmunitionViewModel model;
  const AmmunitionViewList({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          model.haveorderedGuns && model.gunAmmunitionRecommended().isNotEmpty
              ? Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Recommandé avec l'arme",
                        style: ThemeData().textTheme.bodyText1!.copyWith(
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
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 1,
                        childAspectRatio: 1,
                        children: List.generate(
                            model.gunAmmunitionRecommended().length, (index) {
                          return amminitionCard(
                              index: index,
                              ammunition:
                                  model.gunAmmunitionRecommended()[index],
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
                                  child:
                                      Text(model.filterMarqueLength.toString()),
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
                                  child: Text(model.filterCaliberIsActiveLength
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
            child: Column(
              children: [
                LazyLoadScrollView(
                    isLoading: model.isloadDone,
                    onEndOfPage: () => model.loadMore(),
                    scrollOffset: 100,
                    child: Expanded(
                      child: GridView.count(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        children:
                            List.generate(model.ammunitions!.length, (index) {
                          return amminitionCard(
                              index: index,
                              ammunition: model.ammunitions![index],
                              model: model);
                        }),
                      ),
                    )),
                if (model.isloadDone == true)
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
