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
      onModelReady: (model) async => model.init(),
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
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20),
                height: 200,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 2 / 0.5,
                  children: List.generate(model.availableTimes.length, (index) {
                    return time(
                        onPress: () {
                          model.selectTime(model.availableTimes[index]);
                        },
                        isSelected:
                            model.isSelected(model.availableTimes[index]),
                        time: model.availableTimes[index].time!,
                        avaiable: model.availableTimes[index].avaiable!);
                  }),
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

Widget time(
        {int avaiable = 0,
        required String time,
        bool isSelected = false,
        required Function() onPress}) =>
    SizedBox(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            padding: const EdgeInsets.all(10),
            primary: avaiable > 0
                ? isSelected
                    ? buttonColor
                    : kcWhite
                : Colors.white70, // <-- Button color
          ),
          onPressed: avaiable > 0 ? onPress : null,
          child: Text(
            time,
            style: TextStyle(color: isSelected ? kcWhite : backgroundColor),
          )),
    );
