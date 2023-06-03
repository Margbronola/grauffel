import 'package:egczacademy/models/book_model.dart';
import 'package:egczacademy/view_model/booking_vm.dart';
import 'package:egczacademy/views/reservation/courses/new_reservation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import '../shared/color.dart';
import '../shared/widget/app_delegate.dart';
import 'reservation_view_model.dart';

class ReservationView extends StatelessWidget {
  final Function() gotoProfile;
  const ReservationView({
    Key? key,
    required this.gotoProfile,
  }) : super(key: key);
  static final BookingVm _vm = BookingVm.instance;
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
                          width: size(context).width,
                          color: backgroundColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              horizontalSpaceSmall(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
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
                                      "${model.user.first_name ?? ""},"
                                          .toUpperCase(),
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        color: kcWhite,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SliverPersistentHeader(
                      pinned: false,
                      delegate: SliverAppBarDelegate(
                        minHeight: model.isMandatoryPass()
                            ? 0
                            : size(context).height * 0.07,
                        maxHeight: model.isMandatoryPass()
                            ? 0
                            : size(context).height * 0.07,
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
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
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
                                          "assets/images/help.png",
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.w),
                                          child: Text(
                                            "Des documents sont nécessaires pour accéder au stand de tir ",
                                            style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              color: kcWhite,
                                              fontSize: 18.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ];
                },
                body: Column(
                  children: [
                    SizedBox(
                      height: 155.h,
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Stack(
                                  fit: StackFit.passthrough,
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: greyLight,
                                            width: 5,
                                          ),
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: StreamBuilder<List<BookModel>>(
                          stream: _vm.stream,
                          builder: (_, snapshot) {
                            if (!snapshot.hasData ||
                                snapshot.hasError ||
                                model.isBusy) {
                              return ListView(
                                children: [
                                  cardShimmer(),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  cardShimmer(),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  cardShimmer(),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  cardShimmer(),
                                ],
                              );
                            }
                            final List<BookModel> data = snapshot.data!;
                            final List<BookModel> active =
                                data.where((e) => e.status == 1).toList()
                                  ..sort((a, b) {
                                    return a.start.compareTo(b.start);
                                  });

                            final List<BookModel> past =
                                data.where((e) => e.status != 1).toList()
                                  ..sort((b, a) {
                                    return a.start.compareTo(b.start);
                                  });

                            return TabBarView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                refresherView(
                                  active.isEmpty
                                      ? const Center(
                                          child: Text(
                                              "Pas de données disponibles"),
                                        )
                                      : ListView.separated(
                                          itemCount: active.length,
                                          separatorBuilder: (_, i) =>
                                              const Divider(
                                            color: Colors.white,
                                          ),
                                          itemBuilder: ((context, index) =>
                                              NewReservationCard(
                                                fromPast: false,
                                                data: active[index],
                                                model: model,
                                              )),
                                        ),
                                  model,
                                  true,
                                ),
                                refresherView(
                                  active.isEmpty
                                      ? const Center(
                                          child: Text(
                                              "Pas de données disponibles"),
                                        )
                                      : ListView.builder(
                                          itemCount: past.length,
                                          itemBuilder: ((context, index) =>
                                              NewReservationCard(
                                                fromPast: true,
                                                data: past[index],
                                                model: model,
                                              )),
                                        ),
                                  model,
                                  false,
                                ),
                              ],
                            );
                          },
                        ),
                        // child: TabBarView(
                        //   children: [
                        //     model.isBusy
                        //         ? ListView(
                        //             children: [
                        //               cardShimmer(),
                        //               SizedBox(
                        //                 height: 5.h,
                        //               ),
                        //               cardShimmer(),
                        //               SizedBox(
                        //                 height: 5.h,
                        //               ),
                        //               cardShimmer(),
                        //             ],
                        //           )
                        //         : refresherView(
                        //             model.actives!.isEmpty
                        //                 ? const Center(
                        //                     child: Text(
                        //                       "Aucune réservation pour le moment",
                        //                       style: TextStyle(
                        //                         fontFamily: 'ProductSans',
                        //                       ),
                        //                     ),
                        //                   )
                        // : ListView.builder(
                        //     itemCount: model.actives!.length,
                        //     itemBuilder: ((context, index) =>
                        //         ReservationCard(
                        //             onTap: () {
                        //               model.showCardDetails(
                        //                 bookingModel: model
                        //                     .actives![index],
                        //               );
                        //             },
                        //             cancelBook: () {
                        //               model.cancelBook(model
                        //                   .actives![index]
                        //                   .id!);
                        //             },
                        //             isActive: true,
                        //             booking: model
                        //                 .actives![index]))),
                        //             model,
                        //             true),
                        //     refresherView(
                        //         model.isBusy
                        //             ? ListView(
                        //                 children: [
                        //                   cardShimmer(),
                        //                   verticalSpaceSmall(),
                        //                   cardShimmer(),
                        //                   verticalSpaceSmall(),
                        //                   cardShimmer(),
                        //                 ],
                        //               )
                        //             : model.past!.isEmpty
                        //                 ? const Center(
                        //                     child: Text(
                        //                       "Aucune réservation pour le moment",
                        //                       style: TextStyle(
                        //                         fontFamily: 'ProductSans',
                        //                       ),
                        //                     ),
                        //                   )
                        //                 : ListView.builder(
                        //                     itemCount: model.past!.length,
                        //                     itemBuilder: ((context, index) =>
                        //                         ReservationCard(
                        //                             cancelBook: (() =>
                        //                                 model.cancelBook(model
                        //                                     .past![index]
                        //                                     .id!)),
                        //                             onTap: () {
                        //                               model.showCardDetails(
                        //                                 bookingModel: model
                        //                                     .past![index],
                        //                               );
                        //                             },
                        //                             booking:
                        //                                 model.past![index])),
                        //                   ),
                        //         model,
                        //         false)
                        //   ],
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ReservationViewModel(),
    );
  }
}

Widget refresherView(Widget body, ReservationViewModel model, bool isActive) {
  return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      header: const WaterDropHeader(),
      controller:
          isActive ? model.refreshController1 : model.refreshController2,
      onRefresh: model.onRefresh,
      onLoading: model.onLoading,
      child: body);
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
