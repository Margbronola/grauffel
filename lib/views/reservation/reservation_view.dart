import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../shared/color.dart';
import 'reservation_card.dart';
import 'reservation_viewModel.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReservationViewModel>.reactive(
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Container(
            width: size(context).width,
            height: size(context).height,
            child: CustomScrollView(slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 160.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    height: 100,
                    width: size(context).width,
                    color: secondaryColor,
                    child: Image.asset(
                      "assets/images/logo2.png",
                      scale: 5.w,
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: Container(
                  color: kcWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //TODO:ANIMATION make it slide animation
                      AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          height: !model.showHelp ? 0 : 67.h,
                          width: !model.showHelp ? 0 : size(context).width,
                          color: buttonColor,
                          child: Stack(
                            children: [
                              Container(
                                  height: 67.h,
                                  width: 56.w,
                                  child: Image.asset("assets/images/help.png")),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 38.w),
                                  child: Text(
                                    "Des documents sont nécessaires pour accéder au stand de tir",
                                    style: TextStyle(
                                        color: kcWhite, fontSize: 15.sp),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 5,
                                  right: 5,
                                  child: GestureDetector(
                                    onTap: model.closeHelp,
                                    child: Container(
                                        width: 20.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: kcWhite, width: 1),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.close,
                                          size: 15.w,
                                        )),
                                  ))
                            ],
                          )),
                      Container(
                        height: 100.h,
                        width: size(context).width,
                        decoration: BoxDecoration(
                          color: kcWhite,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 0.75), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150.w,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "TOUTES LES RESERVATIONS",
                                      textAlign: TextAlign.center,
                                      style: ThemeData()
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "3",
                                      style: ThemeData()
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 150.w,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "MUNITIONS \nACHETEES",
                                      textAlign: TextAlign.center,
                                      style: ThemeData()
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "50",
                                      style: ThemeData()
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceMedium(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            Text("RESERVATION(S)"),
                            Stack(
                              fit: StackFit.passthrough,
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: greyLight, width: 5),
                                    ),
                                  ),
                                ),
                                TabBar(
                                  unselectedLabelColor: Colors.grey,
                                  labelColor: backgroundColor,
                                  indicatorColor: buttonColor,
                                  indicatorWeight: 5,
                                  tabs: [
                                    Tab(
                                      text: "A venir",
                                    ),
                                    Tab(
                                      text: "Passées",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              child: ListView(
                                children: [
                                  ReservationCard(),
                                  ReservationCard()
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                children: [
                                  ReservationCard(),
                                  ReservationCard()
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
      viewModelBuilder: () => ReservationViewModel(),
    );
  }
}
