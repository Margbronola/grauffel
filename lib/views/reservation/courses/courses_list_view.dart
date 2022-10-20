import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/views/reservation/courses/courses_list_view_model.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../models/reserve_model.dart';
import '../../shared/color.dart';
import 'package:stacked/stacked.dart';

import '../../shared/widget/reserve_card.dart';

class CourseListView extends StatelessWidget {
  const CourseListView({Key? key}) : super(key: key);
  //TODO refreshview

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CoursesListViewModel>.reactive(
      onModelReady: (model) async => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        body: Column(
          children: [
            verticalSpaceSmall(),
            model.isBusy
                ? const Expanded(
                    child: Center(child: CircularProgressIndicator()))
                : Expanded(
                    child: SmartRefresher(
                      enablePullDown: true,
                      enablePullUp: true,
                      header: const WaterDropHeader(),
                      controller: model.refreshController,
                      onRefresh: model.onRefresh,
                      onLoading: model.onLoading,
                      child: model.bookableCourse.isEmpty
                          ? const Center(
                              child: Text("Pas encore de réservation!"),
                            )
                          : ListView(children: [
                              reservationCards(
                                  model: model,
                                  values: model.cours,
                                  title: "Cours"),
                              verticalSpaceMedium(),
                              reservationCards(
                                  model: model,
                                  values: model.stages,
                                  title: "Stages"),
                              verticalSpaceMedium(),
                              reservationCards(
                                  model: model,
                                  values: model.entrainement,
                                  title: "Entrainement")
                            ]),
                    ),
                  ),
          ],
        ),
      ),
      viewModelBuilder: () => CoursesListViewModel(),
    );
  }
}

Widget reservationCards(
        {required CoursesListViewModel model,
        required List<ActivityModel> values,
        required String title}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
                fontSize: 25.sp),
          ),
        ),
        Column(
          children: values
              .map(
                (e) => ReserveCard(
                  isCourse: e.type == null,
                  ontap: () {
                    model.cardSelected(model.bookableCourse.indexOf(e));
                  },
                  reserve: ReserveModel(
                      type: e.type,
                      dateTo: e.date_to ?? "",
                      dateFrom: e.date_from ?? "",
                      startTime: e.start_time ?? "",
                      endTime: e.end_time ?? "",
                      instructor:
                          e.admin != null ? e.admin!.fullname ?? "" : "",
                      restantes: 10,
                      image: e.image ?? "",
                      title: e.name!.toUpperCase(),
                      description: e.description ?? ""),
                ),
              )
              .toList(),
        )
      ],
    );
