import 'package:egczacademy/views/home/reservation/steps/activities_view.dart';
import 'package:egczacademy/views/home/reservation/steps/armore_view.dart';
import 'package:egczacademy/views/home/reservation/steps/bullets_view.dart';
import 'package:egczacademy/views/home/reservation/steps/equipment_view.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/submition_view.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'reserveSteps_viewModel.dart';

class ReserveStepsView extends StatelessWidget {
  const ReserveStepsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReserveStepsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Réservation"),
        ),
        body: Container(
          color: kcWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 90.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      image: DecorationImage(
                          image: AssetImage("assets/images/owner.png"),
                          fit: BoxFit.cover)),
                  child: Container(
                    color: Color.fromARGB(142, 0, 0, 0),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 83.h,
                    width: double.infinity,
                    child: Center(
                      child: Container(
                        width: size(context).width,
                        height: 37,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            circle(isFilled: true, title: "Activities"),
                            divider(),
                            circle(title: "Date"),
                            divider(),
                            circle(title: "Arme"),
                            divider(),
                            circle(title: "Munitons"),
                            divider(),
                            circle(title: "Equipement"),
                          ],
                        ),
                      ),
                    ),
                  )),
              // ActivitiesView()
              // ArmoreView()
              // BulletsView()
              // EquipmentView()
              SubmitionView()
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ReserveStepsViewModel(),
    );
  }

  Widget circle({bool isFilled = false, required String title}) => Container(
        width: 58.w,
        child: Column(
          children: [
            Container(
              width: 22.w,
              height: 22.w,
              decoration: BoxDecoration(
                  color: isFilled ? kcWhite : null,
                  border: Border.all(
                      color: kcWhite, style: BorderStyle.solid, width: 2),
                  shape: BoxShape.circle),
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: Text(
                title,
                style: ThemeData().textTheme.headlineSmall!.copyWith(
                    fontSize: 10.sp,
                    color: kcWhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
  Widget divider() => Container(
      width: 20.w,
      height: 22.w,
      child: Divider(
        color: kcWhite,
        thickness: 2.h,
      ));
}
