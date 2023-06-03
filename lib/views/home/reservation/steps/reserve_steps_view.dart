import 'package:egczacademy/app/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'reserve_steps_view_model.dart';

class ReserveStepsView extends StatelessWidget {
  const ReserveStepsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReserveStepsViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          flexibleSpace: Container(
            width: size(context).width,
            color: buttonColor,
            child: Stack(
              children: [
                Positioned(
                  left: 150,
                  top: -100,
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      imagelBigLogo,
                      color: kcWhite,
                      scale: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          centerTitle: false,
          title: Text(
            "Réservation".toUpperCase(),
            style: TextStyle(
              color: kcWhite,
              fontSize: 26.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'ProductSans',
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //     height: constraints.maxHeight * .08,
                //     width: size(context).width,
                //     color: buttonColor,
                //     child: Stack(
                //       children: [
                //         Positioned(
                //           left: 150,
                //           top: -100,
                //           child: Opacity(
                //             opacity: 0.1,
                //             child: Image.asset(
                //               imagelBigLogo,
                //               color: kcWhite,
                //               scale: 1,
                //             ),
                //           ),
                //         ),
                //         Align(
                //           alignment: Alignment.center,
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             children: [
                //               IconButton(
                //                   onPressed: () {
                //                     Navigator.of(context).pop();
                //                   },
                //                   icon: const Icon(
                //                       Icons.arrow_back_ios_new_rounded)),
                //               // BackButton(
                //               //   color: Colors.yellow,
                //               //   onPressed: () {
                //               //     Navigator.of(context).pop();
                //               //   },
                //               // ),
                //               Text(
                //                 "Réservation".toUpperCase(),
                //                 style: TextStyle(
                //                   color: kcWhite,
                //                   fontSize: 26.sp,
                //                   fontWeight: FontWeight.bold,
                //                   fontFamily: 'ProductSans',
                //                 ),
                //               )
                //             ],
                //           ),
                //         ),
                //       ],
                //     )),
                Container(
                  color: Colors.black,
                  width: size(context).width,
                  height: constraints.maxHeight * 0.09,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: boxes(model),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: model.pageController,
                    onPageChanged: model.nextIndex,
                    children: model.pages,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      viewModelBuilder: () => ReserveStepsViewModel(),
    );
  }

  List<Widget> boxes(ReserveStepsViewModel model) {
    List<Widget> data = [];
    if (model.isCourse) {
      data = [
        square(
            pageIndex: model.selectedIndex,
            index: 0,
            title: "Arme",
            model: model),
        divider(
          pageIndex: model.selectedIndex,
          index: 0,
        ),
        square(
            pageIndex: model.selectedIndex,
            index: 1,
            title: "Munitons",
            model: model),
        divider(
          pageIndex: model.selectedIndex,
          index: 1,
        ),
        square(
            pageIndex: model.selectedIndex,
            index: 2,
            title: "Equipement",
            model: model),
      ];
    } else {
      data = [
        square(
            pageIndex: model.selectedIndex,
            index: 0,
            title: "Date",
            model: model),
        divider(
          pageIndex: model.selectedIndex,
          index: 0,
        ),
        square(
            pageIndex: model.selectedIndex,
            index: 1,
            title: "Arme",
            model: model),
        divider(
          pageIndex: model.selectedIndex,
          index: 1,
        ),
        square(
            pageIndex: model.selectedIndex,
            index: 2,
            title: "Munitons",
            model: model),
        divider(
          pageIndex: model.selectedIndex,
          index: 2,
        ),
        square(
            pageIndex: model.selectedIndex,
            index: 3,
            title: "Equipement",
            model: model),
      ];
    }
    return data;
  }

  Widget square(
          {required int index,
          required String title,
          required pageIndex,
          required ReserveStepsViewModel model}) =>
      GestureDetector(
        onTap: () {
          model.reversePage(index);
        },
        child: SizedBox(
          width: 60.w,
          child: Column(
            children: [
              Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                  color: pageIndex == index
                      ? kcWhite
                      : pageIndex > index
                          ? buttonColor
                          : null,
                  border: pageIndex > index
                      ? null
                      : Border.all(
                          color: kcWhite, style: BorderStyle.solid, width: 2),
                ),
                child: pageIndex > index
                    ? Icon(
                        Icons.check,
                        size: 13.w,
                        color: backgroundColor,
                      )
                    : null,
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: Text(
                  title,
                  style: ThemeData().textTheme.headlineSmall!.copyWith(
                      fontSize: 9.sp,
                      color: kcWhite,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      );
  Widget divider({required int index, required pageIndex}) => SizedBox(
      width: 45.w,
      height: 22.w,
      child: Divider(
        color: pageIndex > index ? buttonColor : kcWhite,
        thickness: 1.h,
      ));
}
