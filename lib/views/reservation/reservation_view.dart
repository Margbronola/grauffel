import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../shared/color.dart';
import 'reservation_card.dart';
import 'reservation_viewModel.dart';
import 'dart:math' as math;

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
                        expandedHeight: 125.h,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                              height: 100,
                              width: size(context).width,
                              color: secondaryColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/user.jpeg"))),
                                  ),
                                  horizontalSpaceSmall(),
                                  Text(
                                    "BONJOUR \nJOHN",
                                    style: TextStyle(
                                        color: kcWhite, fontSize: 25.h),
                                  )
                                ],
                              )),
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: false,
                        delegate: _SliverAppBarDelegate(
                          minHeight: 66,
                          maxHeight: 66,
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              height: !model.showHelp ? 0 : 67.h,
                              width: size(context).width,
                              color: buttonColor,
                              child: Stack(
                                children: [
                                  Container(
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
                        height: 110 + 92.h,
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
                                    offset: Offset(
                                        0, 0.75), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
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
                                  Container(
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
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 92.h,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "RESERVATION(S)",
                                    style: TextStyle(
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                children: [
                                  ReservationCard(),
                                  ReservationCard(),
                                  ReservationCard()
                                ],
                              ),
                              ListView(
                                children: [
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double? minHeight;
  final double? maxHeight;
  final Widget? child;

  @override
  double get minExtent => minHeight!;

  @override
  double get maxExtent => math.max(maxHeight!, minHeight!);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
