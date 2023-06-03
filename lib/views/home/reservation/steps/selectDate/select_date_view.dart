import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:egczacademy/views/home/reservation/steps/selectDate/select_date_view_model.dart';
import '../../../../shared/custom_button.dart';
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
      onViewModelReady: (model) async => model.init(context),
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
                height: 70.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                width: size(context).width,
                color: customGrey,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                child: SizedBox(
                  height: 100.h,
                  // child: DatePicker(model.currentDate,
                  //     // model.scrollController,
                  //     width: size(context).width * 0.17,
                  //     selectionColor: buttonColor,
                  //     deactivatedColor: Colors.grey,
                  //     selectedTextColor: Colors.white,
                  //     onDateChange: model.setDate,
                  //     inactiveDates: [DateTime.now()],
                  //     initialSelectedDate: model.selectedDate,
                  //     locale: 'fr_FR',
                  //     controller: model.controller,
                  //     daysCount: model.numDaysTotal,
                  //     dayTextStyle: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         fontFamily: 'ProductSans',
                  //         color: backgroundColor,
                  //         fontSize: 15.sp)),
                ),
              ),
              model.isBusy
                  ? SizedBox(
                      height: 300.h,
                      child: const Center(
                        child: CircularProgressIndicator.adaptive(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.black,
                          ),
                          backgroundColor: Colors.grey,
                        ),
                      ))
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
                            selectedTime: model.selectedDate,
                            avaiable: model.availableTimes[index].available!,
                            onPress: () {
                              model.selectTime(model.availableTimes[index]);
                            },
                            isSelected:
                                model.isSelected(model.availableTimes[index]),
                            time: model.availableTimes[index].time!,
                          );
                        }),
                      ),
                    )
            ],
          ),
          model.selectedTime != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${model.selectedTime!.available!} places ",
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
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: 150.w,
                    child: CustomButton(
                        title: "Suivant",
                        onTap: model.selectedTime != null
                            ? () {
                                onTap();
                              }
                            : null)),
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
        required DateTime selectedTime,
        bool isSelected = false,
        required Function() onPress}) =>
    SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: avaiable >= 0
              ? selectedTime.toUtc().isAfter(DateTime.now().toUtc()) ||
                      selectedTime.toUtc().isAfter(DateTime.now().toUtc())
                  ? isSelected
                      ? buttonColor
                      : customGrey
                  : DateTime.now().hour > int.parse(time.split(":")[0])
                      ? isSelected
                          ? buttonColor
                          : customGrey
                      : isSelected
                          ? buttonColor
                          : customDarkGrey
              : customDarkGrey,
          padding: const EdgeInsets.all(10), // <-- Button color
        ),
        onPressed:
            // () {
            // if (avaiable >= 0 &&
            //     (selectedTime.toUtc().isAfter(DateTime.now().toUtc()) ||
            //         DateTime.now().hour < int.parse(time.split(":")[0]))) {
            //   print('Click');

            //   onPress;
            // }
            // else {
            //   print("${selectedTime.toUtc()}");
            //   print("${DateTime.now().toUtc()}");
            //   print(DateTime.now().hour < int.parse(time.split(":")[0]));
            //   Fluttertoast.showToast(msg: "Can't book");
            // }

            avaiable >= 0
                ? selectedTime.toUtc().isBefore(DateTime.now().toUtc()) ||
                        selectedTime.toUtc().isAfter(DateTime.now().toUtc())
                    ? onPress
                    : DateTime.now().hour < int.parse(time.split(":")[0])
                        ? onPress
                        : () {}
                : () {},

        // },
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
                    : customTextGrey,
          ),
        ),
      ),
    );
