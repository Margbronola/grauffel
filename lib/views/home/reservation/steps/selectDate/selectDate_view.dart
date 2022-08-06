import 'package:date_picker_timeline/date_picker_widget.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              verticalSpaceSmall(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Choisissez votre créneau",
                  style: ThemeData()
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              verticalSpaceMedium(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height: 60.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: model.prevMonth,
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    Text(model.selectedDate.toString()),
                    IconButton(
                      onPressed: model.forwardMonth,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: greyLighter2,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: SizedBox(
                  height: 90.h,
                  child: DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: buttonColor,
                    selectedTextColor: Colors.white,
                    onDateChange: model.setDate,
                    locale: 'fr_FR',
                    controller: model.controller,
                  ),
                ),
              ),
              model.isBusy
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.h, horizontal: 20),
                      height: 200,
                      child: GridView.count(
                        // Create a grid with 2 columns. If you change the scrollDirection to
                        // horizontal, this produces 2 rows.
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        childAspectRatio: 2 / 0.5,
                        children:
                            List.generate(model.availableTimes.length, (index) {
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
