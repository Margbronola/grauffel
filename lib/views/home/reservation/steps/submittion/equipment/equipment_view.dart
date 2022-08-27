import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';

import '../../../../../../app/global.dart';
import '../../../../../shared/color.dart';
import '../../../../../shared/customButton.dart';
import '../../../../../shared/ui_helper.dart';
import 'equipment_viewModel.dart';

class EquipmentView extends StatelessWidget {
  final Function() onTap;
  final Function() skipTap;
  const EquipmentView({
    Key? key,
    required this.onTap,
    required this.skipTap,
  }) : super(key: key);

  get kcWhite => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EquipmentViewModel>.reactive(
      onModelReady: (model) async => model.init(),
      builder: (context, model, child) => model.isBusy
          ? const StepeShimmerLoader()
          : Column(
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
                          child: GridView.count(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 2,
                            children: List.generate(model.equipments!.length,
                                (index) {
                              return equipemntCardView(
                                  index: index,
                                  equipmentModel: model.equipments![index],
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
                  padding: EdgeInsets.only(left: 45.w, right: 45.w, bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: skipTap,
                        child: Text(
                          "J’ai déjà des\néquipements".toUpperCase(),
                          style: ThemeData().textTheme.bodyText1!.copyWith(
                              fontSize: 15.sp,
                              color: Colors.grey,
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CustomButton(
                          title: "Suivant",
                          onTap:
                              model.selectedEquipment.isNotEmpty ? onTap : null)
                    ],
                  ),
                )
              ],
            ),
      viewModelBuilder: () => EquipmentViewModel(),
    );
  }
}

Widget equipemntCardView(
        {required EquipmentViewModel model,
        required EquipmentModel equipmentModel,
        required int index}) =>
    GestureDetector(
      onTap: () {
        model.selectCard(equipmentModel);
      },
      child: Container(
        decoration: BoxDecoration(
            border: model.selectedEquipment.contains(equipmentModel)
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
                          image: equipmentModel.image == null
                              ? Image.asset("assets/images/noImage.png")
                                  as ImageProvider
                              : CachedNetworkImageProvider(
                                  "$urlServer/${equipmentModel.image!.path}/${equipmentModel.image!.filename}"))),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    equipmentModel.name!,
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
                      "Référence",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                    Text(
                      "SH2-BUSH-CER",
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
                      "Marque",
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp,
                            fontFamily: 'ProductSans',
                          ),
                    ),
                    Text(
                      "CZ",
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
