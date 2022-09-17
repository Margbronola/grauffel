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
                                  horizontalSpaceSmall(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          "BONJOUR ".toUpperCase(),
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            color: kcWhite,
                                            fontSize: 22.sp,
                                          ),
                                        ),
                                        Text(
                                          "${model.user.first_name},"
                                              .toUpperCase(),
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              color: kcWhite,
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: false,
                        delegate: SliverAppBarDelegate(
                          minHeight: model.isMandatoryPass() ? 0 : 50,
                          maxHeight: model.isMandatoryPass() ? 0 : 50,
                          child: model.isMandatoryPass()
                              ? const SizedBox()
                              : Container(
                                  decoration: BoxDecoration(
                                      color: buttonColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ]),
                                  height: !model.showHelp ? 0 : 67.h,
                                  width: size(context).width,
                                  child: GestureDetector(
                                    onTap: gotoProfile,
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                            height: 67.h,
                                            width: 56.w,
                                            child: Image.asset(
                                                "assets/images/help.png")),

                                        //TODO: show only if user documents still not verify
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 38.w),
                                            child: Text(
                                              "Des documents sont nécessaires pour accéder au stand de tir ",
                                              style: TextStyle(
                                                fontFamily: 'ProductSans',
                                                color: kcWhite,
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                          ),
                                        ),
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
                        height: 150.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  verticalSpaceMedium(),
                                  Text(
                                    "Réservation(S)".toUpperCase(),
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        color: backgroundColor,
                                        fontSize: 25.sp,
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
                                      TabBar(
                                        unselectedLabelStyle: TextStyle(
                                          fontFamily: 'ProductSans',
                                          color: backgroundColor,
                                          fontSize: 20.sp,
                                        ),
                                        labelStyle: TextStyle(
                                            fontFamily: 'ProductSans',
                                            color: backgroundColor,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold),
                                        unselectedLabelColor: Colors.grey,
                                        labelColor: backgroundColor,
                                        indicatorColor: buttonColor,
                                        indicatorWeight: 5,
                                        tabs: const [
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
                                          child: Text(
                                            "Aucune réservation pour le moment",
                                            style: TextStyle(
                                              fontFamily: 'ProductSans',
                                            ),
                                          ),
                                        ))
                                      : ListView.builder(
                                          itemCount: model.actives!.length,
                                          itemBuilder: ((context, index) =>
                                              ReservationCard(
                                                  onTap: () {
                                                    model
                                                        .showCardDetails(index);
                                                  },
                                                  cancelBook: () =>
                                                      model.cancelBook(model
                                                          .actives![index].id!),
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
                                  : model.past!.isEmpty
                                      ? Container(
                                          child: const Center(
                                          child: Text(
                                            "Aucune réservation pour le moment",
                                            style: TextStyle(
                                              fontFamily: 'ProductSans',
                                            ),
                                          ),
                                        ))
                                      : ListView.builder(
                                          itemCount: model.past!.length,
                                          itemBuilder: ((context, index) =>
                                              ReservationCard(
                                                  cancelBook: (() =>
                                                      model.cancelBook(model
                                                          .past![index].id!)),
                                                  onTap: () {
                                                    model
                                                        .showCardDetails(index);
                                                  },
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
