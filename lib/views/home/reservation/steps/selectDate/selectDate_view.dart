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
      onModelReady: (model) async => model.init(context),
      builder: (context, model, child) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              verticalSpaceSmall(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4),
                child: Text("Choisissez votre créneau",
                    style: ThemeData().textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProductSans',
                          color: backgroundColor,
                          fontSize: 24.sp,
                        )),
              ),
              verticalSpaceMedium(),
              Container(
                color: customGrey,
                padding: EdgeInsets.only(top: 15.w, right: 20, left: 20),
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
                    Text(
                      model.headerDate(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ProductSans',
                        color: backgroundColor,
                        fontSize: 18.sp,
                      ),
                    ),
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
                color: customGrey,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                child: SizedBox(
                  height: 90.h,
                  child: DatePicker(model.currentDate, model.scrollController,
                      selectionColor: buttonColor,
                      deactivatedColor: Colors.grey,
                      selectedTextColor: Colors.white,
                      onDateChange: model.setDate,
                      inactiveDates: [DateTime.now()],
                      locale: 'fr_FR',
                      controller: model.controller,
                      daysCount: model.numDaysTotal,
                      dayTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProductSans',
                          color: backgroundColor,
                          fontSize: 15.sp)),
                ),
              ),
              model.isBusy
                  ? SizedBox(
                      height: 300.h,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 300.h,
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
          model.selectedTime.isNotEmpty
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${model.availableTimes.length} places ",
                      style: TextStyle(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProductSans',
                          fontSize: 18.sp),
                    ),
                    Text("restantes",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ProductSans',
                            fontSize: 18.sp))
                  ],
                )
              : const SizedBox(),
          verticalSpaceMedium(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: 150.w,
                    child: CustomButton(title: "Suivant", onTap: onTap)),
              ],
            ),
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
            elevation: 0,
            padding: const EdgeInsets.all(10),

            primary: avaiable > 0
                ? isSelected
                    ? buttonColor
                    : customGrey
                : customDarkGrey, // <-- Button color
          ),
          onPressed: avaiable > 0 ? onPress : () {},
          child: Text(
            "${time.split(":")[0]}h${time.split(":")[1].toString().length > 1 ? time.split(":")[1].toString() : "0${time.split("-")[1].split(":")[1].toString()}"} - ${time.split("-")[1].split(":")[0]}h${time.split("-")[1].split(":")[1].toString().length > 1 ? time.split(":")[1].toString() : "0${time.split("-")[1].split(":")[1].toString()}"}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'ProductSans',
                fontSize: 15.sp,
                color: isSelected
                    ? kcWhite
                    : avaiable > 0
                        ? backgroundColor
                        : customTextGrey),
          )),
    );
