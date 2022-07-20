import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/views/home/reservation/steps/selectDate/selectDate_viewModel.dart';

import '../../../../shared/customButton.dart';
import '../../../../shared/ui_helper.dart';

class SelectDateView extends StatelessWidget {
  final Function() onTap;
  const SelectDateView({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectDateViewModel>.reactive(
      builder: (context, model, child) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              verticalSpaceSmall(),
              Text(
                "Choisissez votre créneau",
                style: ThemeData()
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              verticalSpaceMedium(),
              Container(
                color: greyLighter2,
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: CalendarTimeline(
                  showYears: true,
                  initialDate: model.selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
                  onDateSelected: model.setDate,
                  leftMargin: 20,
                  monthColor: backgroundColor,
                  dayColor: backgroundColor,
                  dayNameColor: kcWhite,
                  activeDayColor: kcWhite,
                  activeBackgroundDayColor: buttonColor,
                  dotsColor: kcWhite,
                  selectableDayPredicate: (date) => date.day != 23,
                  locale: 'fr',
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                height: 200,
                child: Column(
                  children: [
                    time(status2: 1),
                    time(status1: 1, status2: 1),
                    time(status3: 2),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                  width: 150.w,
                  child: CustomButton(title: "Suivant", onTap: onTap)),
            ],
          ),
          verticalSpaceSmall()
        ],
      ),
      viewModelBuilder: () => SelectDateViewModel(),
    );
  }
}

// 0 = vacant
// 1 = notvacant
// 2 = selected
Widget time({int status1 = 0, int status2 = 0, int status3 = 0}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 2,
              padding: const EdgeInsets.all(10),
              primary: status1 == 0
                  ? kcWhite
                  : status1 == 1
                      ? Colors.white70
                      : buttonColor, // <-- Button color
              onPrimary:
                  status1 == 2 ? kcWhite : buttonColor, // <-- Splash color
            ),
            onPressed: () {},
            child: const Text("9h00 - 11h00")),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 2,
              padding: const EdgeInsets.all(10),
              primary: status2 == 0
                  ? kcWhite
                  : status2 == 1
                      ? Colors.white70
                      : buttonColor, // <-- Button color
              onPrimary:
                  status2 == 2 ? kcWhite : buttonColor, // <-- Splash color
            ),
            onPressed: () {},
            child: const Text("9h00 - 11h00")),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 2,
              padding: const EdgeInsets.all(10),
              primary: status3 == 0
                  ? kcWhite
                  : status3 == 1
                      ? Colors.white70
                      : buttonColor, // <-- Button color
              onPrimary:
                  status3 == 2 ? kcWhite : buttonColor, // <-- Splash color
            ),
            onPressed: () {},
            child: const Text("9h00 - 11h00"))
      ],
    );
