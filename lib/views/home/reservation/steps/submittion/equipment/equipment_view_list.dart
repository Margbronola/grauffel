import 'package:cached_network_image/cached_network_image.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/equipment/equipment_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import '../../../../../../app/global.dart';
import '../../../../../../models/equipment_model.dart';
import '../../../../../shared/color.dart';

class EquipmentViewList extends StatelessWidget {
  final EquipmentViewModel model;
  const EquipmentViewList({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Choisissez votre équipement",
              style: ThemeData().textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ProductSans',
                    fontSize: 24.sp,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
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
                        mainAxisSpacing: 5,
                        childAspectRatio: 1 / 1,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        children:
                            List.generate(model.equipments!.length, (index) {
                          return equipemntCardView(
                              index: index,
                              equipmentModel: model.equipments![index],
                              model: model);
                        }),
                      ),
                    )),
                if (model.isloadDone == true)
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Center(child: CircularProgressIndicator.adaptive()),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget equipemntCardView(
        {required EquipmentViewModel model,
        required EquipmentModel equipmentModel,
        required int index}) =>
    GestureDetector(
      onTap: () async {
        model.selectCard(equipmentModel);
      },
      child: Container(
        decoration: BoxDecoration(
            border: model.selectedEquipment.contains(equipmentModel)
                ? Border.all(color: buttonColor, width: 2)
                : null,
            color: greyLighter,
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(30)),
                                  child: Container(
                                      width: 85.w,
                                      height: 77.h,
                                      decoration: const BoxDecoration(
                                        color: kcWhite,
                                      ),
                                      child: equipmentModel.image == null
                                          ? Image.asset(
                                              "assets/images/noImage.png")
                                          : CachedNetworkImage(
                                              fit: BoxFit.cover,
                                              imageUrl:
                                                  "$urlServer/${equipmentModel.image!.path}/${equipmentModel.image!.filename}",
                                              placeholder: (context, url) =>
                                                  const Center(
                                                      child:
                                                          CircularProgressIndicator
                                                              .adaptive()),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            )),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 130.w,
                              child: Text(
                                equipmentModel.name!,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    ThemeData().textTheme.bodyText1!.copyWith(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'ProductSans',
                                        ),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 130.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Référence",
                                          style: ThemeData()
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 10.sp,
                                                fontFamily: 'ProductSans',
                                              ),
                                        ),
                                        Text(
                                          equipmentModel.name!,
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
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
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
                                          equipmentModel.brand!.name!,
                                          overflow: TextOverflow.clip,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 2,
                    top: 2,
                    child: GestureDetector(
                      onTap: () {
                        model.showDetails(index);
                      },
                      child: const Icon(
                        Icons.info,
                        color: buttonColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
