import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/views/home/reservation/steps/step/step_viewModel.dart';

import '../../../../shared/color.dart';
import '../../../../shared/customButton.dart';
import '../../../../shared/ui_helper.dart';
import '../../../../shared/widget/guns/weaponCard.dart';
import '../armore_view.dart';

class StepView extends StatelessWidget {
  final List data;
  final String title;
  final String skipTitle;
  const StepView({
    Key? key,
    required this.data,
    required this.title,
    required this.skipTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StepViewModel>.reactive(
      builder: (context, model, child) => Column(
        children: [
          Container(
            height: 70.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kcWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 0.75), // changes position of shadow
                ),
              ],
            ),
            child: Center(
                child: Text(
              title,
              style: ThemeData()
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
            )),
          ),
          verticalSpaceMedium(),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 15,
              crossAxisSpacing: 20,
              crossAxisCount: 2,
              children: List.generate(data.length, (index) {
                return WeaponCardView(
                  index: index,
                  data: data[index],
                );
              }),
            ),
          ),
          Text(
            skipTitle,
            style: ThemeData()
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 15.sp, color: buttonColor),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 20),
              width: 354.w,
              child: CustomButton(title: "Suivant", onTap: () {}))
        ],
      ),
      viewModelBuilder: () => StepViewModel(),
    );
  }
}
