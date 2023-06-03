import 'package:egczacademy/views/home/reservation/steps/submittion/equipment/equipment_view_list.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/equipment/equipment_view_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:egczacademy/views/shared/widget/step_shimmer_loader.dart';
import '../../../../../shared/color.dart';
import '../../../../../shared/custom_button.dart';
import '../../../../../shared/ui_helper.dart';
import 'equipment_view_model.dart';

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
      onViewModelReady: (model) async => model.init(),
      builder: (context, model, child) => model.isBusy
          ? const StepeShimmerLoader()
          : Column(
              children: [
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: model.pageController,
                    onPageChanged: model.nextIndex,
                    children: <Widget>[
                      EquipmentViewList(model: model),
                      EquipmentViewQuantity(model: model)
                    ],
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
                          onTap: model.selectedEquipment.isNotEmpty
                              ? () {
                                  debugPrint("x");
                                  model.suivant(onTap);
                                }
                              : () {
                                  skipTap();
                                })
                    ],
                  ),
                )
              ],
            ),
      viewModelBuilder: () => EquipmentViewModel(),
    );
  }
}
