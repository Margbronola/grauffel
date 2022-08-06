import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/views/shared/ui_helper.dart';

import '../shared/color.dart';
import '../shared/widget/app_delegate.dart';
import 'reservation_card.dart';
import 'reservation_viewModel.dart';

class ReservationView extends StatelessWidget {
  final Function() gotoProfile;
  const ReservationView({
    Key? key,
    required this.gotoProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReservationViewModel>.reactive(
      onModelReady: (model) async => model.init(),
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
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                              height: 60.h,
                              width: size(context).width,
                              color: backgroundColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Container(
                                  //   height: 55.h,
                                  //   width: 55.w,
                                  //   decoration: const BoxDecoration(
                                  //       shape: BoxShape.circle,
                                  //       image: DecorationImage(
                                  //           image: AssetImage(
                                  //               "assets/images/user.jpeg"))),
                                  // ),
                                  horizontalSpaceSmall(),
                                  Text(
                                    "BONJOUR ${model.user.first_name}"
                                        .toUpperCase(),
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
                              child: GestureDetector(
                                onTap: gotoProfile,
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
                                    // Positioned(
                                    //     top: 5,
                                    //     right: 5,
                                    //     child: GestureDetector(
                                    //       onTap: model.closeHelp,
                                    //       child: Container(
                                    //           width: 20.w,
                                    //           height: 20.h,
                                    //           decoration: BoxDecoration(
                                    //               border: Border.all(
                                    //                   color: kcWhite, width: 1),
                                    //               shape: BoxShape.circle),
                                    //           child: Icon(
                                    //             Icons.close,
                                    //             size: 15.w,
                                    //           )),
                                    //     ))
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ];
                  },
                  body: Column(
                    children: [
                      SizedBox(
                        height: 120.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  verticalSpaceSmall(),
                                  Text(
                                    "Réservation(S)".toUpperCase(),
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
                              model.isBusy
                                  ? ListView(
                                      children: [
                                        cardShimmer(),
                                        verticalSpaceSmall(),
                                        cardShimmer(),
                                        verticalSpaceSmall(),
                                        cardShimmer(),
                                      ],
                                    )
                                  : model.actives!.isEmpty
                                      ? Container(
                                          child: const Center(
                                          child: Text("No Reservation yet"),
                                        ))
                                      : ListView.builder(
                                          itemCount: model.actives!.length,
                                          itemBuilder: ((context, index) =>
                                              ReservationCard(
                                                  isActive: true,
                                                  booking:
                                                      model.actives![index]))),
                              model.isBusy
                                  ? ListView(
                                      children: [
                                        cardShimmer(),
                                        verticalSpaceSmall(),
                                        cardShimmer(),
                                        verticalSpaceSmall(),
                                        cardShimmer(),
                                      ],
                                    )
                                  : ListView.builder(
                                      itemCount: model.past!.length,
                                      itemBuilder: ((context, index) =>
                                          ReservationCard(
                                              booking: model.past![index])),
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

Widget cardShimmer() => Shimmer.fromColors(
      baseColor: greyLighter2,
      highlightColor: Colors.white,
      child: Card(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 148.h,
        ),
      ),
    );
