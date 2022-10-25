import 'package:egczacademy/views/home/reservation/reservation_list.dart';
import 'package:egczacademy/views/home/reservation/reservation_pageview_model.dart';
import 'package:egczacademy/views/reservation/courses/courses_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../../shared/color.dart';
import '../../shared/widget/header/header.dart';

class ReservationPageView extends StatelessWidget {
  const ReservationPageView({Key? key}) : super(key: key);

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReservationPageViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        body: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                const SliverAppBar(
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Header(title: "réservation"),
                  ),
                ),
              ];
            },
            body: DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: LayoutBuilder(builder: ((context, constraints) {
                var w = constraints.maxWidth;
                var h = constraints.maxHeight;
                return Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          fit: StackFit.passthrough,
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(color: greyLight, width: 5),
                                ),
                              ),
                            ),
                            TabBar(
                              unselectedLabelStyle: TextStyle(
                                fontFamily: 'ProductSans',
                                color: Colors.black,
                                fontSize: 20.sp,
                              ),
                              labelStyle: TextStyle(
                                  fontFamily: 'ProductSans',
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.black,
                              indicatorColor: buttonColor,
                              indicatorWeight: 5,
                              tabs: const [
                                Tab(
                                  text: "Activités",
                                ),
                                Tab(
                                  text: "Cours & Stages",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        color: kcWhite,
                        child: const TabBarView(
                          children: [ReservationList(), CourseListView()],
                        ),
                      ),
                    ),
                  ],
                );
              })),
            )),
      ),
      viewModelBuilder: () => ReservationPageViewModel(),
    );
  }
}
