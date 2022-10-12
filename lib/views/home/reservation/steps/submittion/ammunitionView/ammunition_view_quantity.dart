import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:egczacademy/views/home/reservation/steps/submittion/ammunitionView/ammunition_view_model.dart';

import '../../../../../../app/global.dart';
import '../../../../../shared/color.dart';
import '../../../../../shared/ui_helper.dart';

class AmmunitionViewQuantity extends StatelessWidget {
  final AmmunitionViewModel model;
  const AmmunitionViewQuantity({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Choisissez la quantité",
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
          SizedBox(
            width: double.infinity,
            child: Text(
              "Les munitions sont disponibles en boite de 50.",
              style: ThemeData().textTheme.bodyText1!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProductSans',
                  ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: model.selectedAmmunition.length,
            itemBuilder: (_, index) => Card(
              color: customGrey,
              child: Stack(
                children: [
                  Container(
                    height: 88.h,
                    width: 363.w,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          height: 88.h,
                          width: 88.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(30)),
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  opacity:
                                      model.selectedAmmunition[index].image ==
                                              null
                                          ? 0.2
                                          : 1,
                                  image: model.selectedAmmunition[index]
                                              .image ==
                                          null
                                      ? const AssetImage(
                                              "assets/images/noImage.png")
                                          as ImageProvider
                                      : CachedNetworkImageProvider(
                                          "$urlServer/${model.selectedAmmunition[index].image!.path}/${model.selectedAmmunition[index].image!.filename}"))),
                        ),
                        horizontalSpaceSmall(),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 100.w,
                                      child: Text(
                                        model.selectedAmmunition[index].name!,
                                        overflow: TextOverflow.ellipsis,
                                        style: ThemeData()
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'ProductSans',
                                            ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Marque",
                                          style: ThemeData()
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 10.sp,
                                                fontFamily: 'ProductSans',
                                              ),
                                        ),
                                        Text(
                                          model.selectedAmmunition[index].brand!
                                              .name!,
                                          style: ThemeData()
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'ProductSans',
                                              ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Calibre",
                                      style: ThemeData()
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 10.sp,
                                            fontFamily: 'ProductSans',
                                          ),
                                    ),
                                    Text(
                                      model.selectedAmmunition[index].caliber!
                                          .name!,
                                      style: ThemeData()
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'ProductSans',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            model.decreaseBox(index);
                                          },
                                          child: Image.asset(
                                            "assets/images/backward.png",
                                            width: 16.w,
                                            height: 25.h,
                                          ),
                                        ),
                                        Text(
                                          model.selectedAmmunition[index]
                                              .quantity
                                              .toString(),
                                          style: ThemeData()
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 20.sp,
                                                  fontFamily: 'ProductSans',
                                                  color: buttonColor),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            model.increaseBox(index);
                                            debugPrint("increas");
                                          },
                                          child: Image.asset(
                                            "assets/images/forward.png",
                                            width: 16.w,
                                            height: 25.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "boites",
                                      style: ThemeData()
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'ProductSans',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              horizontalSpaceMedium(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 3,
                    right: 3,
                    child: GestureDetector(
                      onTap: () {
                        model.removeAmmunition(model.selectedAmmunition[index]);
                      },
                      child: const Icon(
                        Icons.close,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
