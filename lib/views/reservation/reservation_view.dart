import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../shared/color.dart';
import '../shared/widget/app_delegate.dart';
import 'reservation_card.dart';
import 'reservation_viewModel.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReservationViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: AbsorbPointer(
              absorbing: model.absorb,
              child: NestedScrollView(
                  controller: model.scrolleController,
                  headerSliverBuilder: (context, value) {
                    return [
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        expandedHeight: 100.h,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                              height: 100.h,
                              width: size(context).width,
                              color: secondaryColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 55.h,
                                    width: 55.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/user.jpeg"))),
                                  ),
                                  horizontalSpaceSmall(),
                                  Text(
                                    "BONJOUR \nJOHN",
                                    style: TextStyle(
                                        color: kcWhite, fontSize: 20..sp),
                                  )
                                ],
                              )),
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: false,
                        delegate: SliverAppBarDelegate(
                          minHeight: 50,
                          maxHeight: 50,
                          child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: !model.showHelp ? 0 : 67.h,
                              width: size(context).width,
                              color: buttonColor,
                              child: Stack(
                                children: [
                                  SizedBox(
                                      height: 67.h,
                                      width: 56.w,
                                      child: Image.asset(
                                          "assets/images/help.png")),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 38.w),
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
                        ),
                      ),
                    ];
                  },
                  body: Column(
                    children: [
                      SizedBox(
                        height: 250.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 110.h,
                              width: size(context).width,
                              decoration: BoxDecoration(
                                color: kcWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 0.75), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 150.w,
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "TOUTES LES RESERVATIONS",
                                            textAlign: TextAlign.center,
                                            style: ThemeData()
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          Text(
                                            "3",
                                            style: ThemeData()
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150.w,
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "MUNITIONS \nACHETEES",
                                            textAlign: TextAlign.center,
                                            style: ThemeData()
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          Text(
                                            "50",
                                            style: ThemeData()
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "RESERVATION(S)",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Stack(
                                    fit: StackFit.passthrough,
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: greyLight, width: 5),
                                          ),
                                        ),
                                      ),
                                      const TabBar(
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
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TabBarView(
                            children: [
                              ListView(
                                children: const [
                                  ReservationCard(),
                                  ReservationCard(),
                                  ReservationCard()
                                ],
                              ),
                              ListView(
                                children: const [
                                  ReservationCard(),
                                  ReservationCard(),
                                  ReservationCard()
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ReservationViewModel(),
    );
  }
}
