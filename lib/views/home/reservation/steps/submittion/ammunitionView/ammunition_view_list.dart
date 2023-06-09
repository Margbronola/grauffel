import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/ammunitionView/ammunition_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import '../../../../../../models/ammunitions_model.dart';
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
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            model.haveorderedGuns
                ? Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Recommandé avec l'arme",
                          style: ThemeData().textTheme.bodyLarge!.copyWith(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProductSans',
                              ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GridView.count(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                            model.gunAmmunitionRecommendedList.length, (index) {
                          return amminitionCard(
                              index: index,
                              ammunition:
                                  model.gunAmmunitionRecommendedList[index],
                              model: model);
                        }),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          // model.haveorderedGuns
                          //     ? "D'autres choix"
                          //     :
                          "Choisissez vos munitions",
                          style: ThemeData().textTheme.bodyLarge!.copyWith(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProductSans',
                              ),
                        ),
                      ),
                      const SizedBox(height: 5),
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
                      // Expanded(
                      // child:
                      LazyLoadScrollView(
                        isLoading: model.isloadDone,
                        onEndOfPage: () => model.loadMore(),
                        scrollOffset: 100,
                        child: GridView.count(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: List.generate(
                            model.ammunitions!.length,
                            (index) {
                              return amminitionCard(
                                index: index,
                                ammunition: model.ammunitions![index],
                                model: model,
                              );
                            },
                          ),
                        ),
                      ),
                      if (model.isloadDone == true)
                        const Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Center(
                            child: CircularProgressIndicator.adaptive(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.black,
                              ),
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ),
                      // ),
                    ],
                  )
          ],
        )
        // child: Column(
        //   children: [
        //     model.haveorderedGuns && model.gunAmmunitionRecommendedList.isNotEmpty
        //         ?
        //         : const SizedBox(),
        //     // verticalSpaceSmall(),
        // SizedBox(
        //   width: double.infinity,
        //   child: Text(
        //     model.haveorderedGuns
        //         ? "D'autres choix"
        //         : "Choisissez vos munitions",
        //     style: ThemeData().textTheme.bodyText1!.copyWith(
        //           fontSize: 24.sp,
        //           fontWeight: FontWeight.bold,
        //           fontFamily: 'ProductSans',
        //         ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 5,
        // ),
        // Row(
        //   children: [
        //     OutlinedButton(
        //         style: OutlinedButton.styleFrom(
        //             backgroundColor: model.filterMarqueIsActive
        //                 ? buttonColor.withOpacity(0.3)
        //                 : kcWhite,
        //             side: BorderSide(
        //                 color: model.filterMarqueIsActive
        //                     ? buttonColor
        //                     : greyLight) //<-- SEE HERE
        //             ),
        //         onPressed: model.marqueFilter,
        //         child: Row(
        //           children: [
        //             Text(
        //               'Marque',
        //               style: TextStyle(
        //                   color: backgroundColor,
        //                   fontWeight: FontWeight.bold,
        //                   fontFamily: 'ProductSans',
        //                   fontSize: 15.sp),
        //             ),
        //             model.filterMarqueIsActive
        //                 ? Row(
        //                     children: [
        //                       horizontalSpaceSmall(),
        //                       GFBadge(
        //                         shape: GFBadgeShape.circle,
        //                         color: buttonColor,
        //                         child:
        //                             Text(model.filterMarqueLength.toString()),
        //                       ),
        //                     ],
        //                   )
        //                 : const SizedBox(),
        //           ],
        //         )),
        //     horizontalSpaceSmall(),
        //     OutlinedButton(
        //         style: OutlinedButton.styleFrom(
        //             backgroundColor: model.filterCaliberIsActive
        //                 ? buttonColor.withOpacity(0.3)
        //                 : kcWhite,
        //             side: BorderSide(
        //                 color: model.filterCaliberIsActive
        //                     ? buttonColor
        //                     : greyLight) //<-- SEE HERE
        //             ),
        //         onPressed: model.caliberFilter,
        //         child: Row(
        //           children: [
        //             Text(
        //               'Calibre',
        //               style: TextStyle(
        //                 fontSize: 15.sp,
        //                 color: backgroundColor,
        //                 fontWeight: FontWeight.bold,
        //                 fontFamily: 'ProductSans',
        //               ),
        //             ),
        //             model.filterCaliberIsActive
        //                 ? Row(
        //                     children: [
        //                       horizontalSpaceSmall(),
        //                       GFBadge(
        //                         shape: GFBadgeShape.circle,
        //                         color: buttonColor,
        //                         child: Text(model.filterCaliberIsActiveLength
        //                             .toString()),
        //                       ),
        //                     ],
        //                   )
        //                 : const SizedBox(),
        //           ],
        //         )),
        //   ],
        // ),
        // const SizedBox(
        //   height: 5,
        // ),
        // Expanded(
        //   child: Column(
        //     children: [
        //       LazyLoadScrollView(
        //         isLoading: model.isloadDone,
        //         onEndOfPage: () => model.loadMore(),
        //         scrollOffset: 100,
        //         child: Expanded(
        //           child: GridView.count(
        //             padding: const EdgeInsets.symmetric(horizontal: 20),
        //             mainAxisSpacing: 10,
        //             crossAxisSpacing: 10,
        //             crossAxisCount: 2,
        //             children: List.generate(
        //               model.ammunitions!.length,
        //               (index) {
        //                 return amminitionCard(
        //                   index: index,
        //                   ammunition: model.ammunitions![index],
        //                   model: model,
        //                 );
        //               },
        //             ),
        //           ),
        //         ),
        //       ),
        //       if (model.isloadDone == true)
        //         const Padding(
        //           padding: EdgeInsets.only(top: 10, bottom: 10),
        //           child: Center(
        //             child: CircularProgressIndicator.adaptive(
        //               valueColor: AlwaysStoppedAnimation<Color>(
        //                 Colors.black,
        //               ),
        //               backgroundColor: Colors.grey,
        //             ),
        //           ),
        //         ),
        //     ],
        //   ),
        // ),
        //   ],
        // ),
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
          borderRadius: BorderRadius.circular(5),
        ),
        width: 161.w,
        height: 167.h,
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.only(bottomRight: Radius.circular(30)),
                  child: Container(
                      width: 85.w,
                      height: 77.h,
                      decoration: const BoxDecoration(
                        color: kcWhite,
                      ),
                      child: ammunition.image_thumb_url == null
                          ? Image.asset("assets/images/noImage.png")
                          : CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: ammunition.image_thumb_url!,
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator.adaptive(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.black,
                                  ),
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            )),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    ammunition.name!,
                    overflow: TextOverflow.ellipsis,
                    style: ThemeData().textTheme.bodyLarge!.copyWith(
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
                      style: ThemeData().textTheme.bodyLarge!.copyWith(
                            fontSize: 10.sp,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                    Text(
                      ammunition.brand!.name!,
                      style: ThemeData().textTheme.bodyLarge!.copyWith(
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
                      style: ThemeData().textTheme.bodyLarge!.copyWith(
                            fontSize: 10.sp,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                    Text(
                      ammunition.caliber!.name!,
                      style: ThemeData().textTheme.bodyLarge!.copyWith(
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
