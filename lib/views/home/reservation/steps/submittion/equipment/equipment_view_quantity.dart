import 'package:cached_network_image/cached_network_image.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/equipment/equipment_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/color.dart';
import '../../../../../shared/ui_helper.dart';

class EquipmentViewQuantity extends StatelessWidget {
  final EquipmentViewModel model;
  const EquipmentViewQuantity({
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
            itemCount: model.selectedEquipment.length,
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            height: 88.h,
                            width: 88.w,
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30)),
                            ),
                            child: model.selectedEquipment[index]
                                        .image_thumb_url ==
                                    null
                                ? Image.asset("assets/images/noImage.png")
                                : CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: model.selectedEquipment[index]
                                        .image_thumb_url!,
                                    placeholder: (context, url) => const Center(
                                      child: CircularProgressIndicator.adaptive(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Colors.black,
                                        ),
                                        backgroundColor: Colors.grey,
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                          ),
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
                                          model.selectedEquipment[index].brand!
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
                                      "Référence",
                                      overflow: TextOverflow.clip,
                                      style: ThemeData()
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 10.sp,
                                            fontFamily: 'ProductSans',
                                          ),
                                    ),
                                    Text(
                                      model.selectedEquipment[index].name!,
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
                                            model.decreaseQuantity(index);
                                          },
                                          child: Image.asset(
                                            "assets/images/backward.png",
                                            width: 16.w,
                                            height: 25.h,
                                          ),
                                        ),
                                        Text(
                                          model
                                              .selectedEquipment[index].quantity
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
                                            model.increaseQuantity(index);
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
                        model.removeEquipment(model.selectedEquipment[index]);
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
