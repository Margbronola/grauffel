import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import '../../../models/reserve_model.dart';
import '../../shared/color.dart';
import 'package:stacked/stacked.dart';
import '../../shared/widget/header/header.dart';
import '../../shared/widget/reserve_card.dart';
import 'reservation_list_model.dart';

class ReservationList extends StatelessWidget {
  const ReservationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReservationListModel>.reactive(
      onModelReady: (model) async => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        body: Column(
          children: [
            const Header(title: "réservation"),
            verticalSpaceSmall(),
            model.isBusy
                ? const Expanded(
                    child: Center(child: CircularProgressIndicator()))
                : Expanded(
                    child: model.bookables.isEmpty
                        ? const Center(
                            child: Text("Pas encore de réservation!"),
                          )
                        : ListView.builder(
                            itemCount: model.bookables.length,
                            itemBuilder: (context, index) => ReserveCard(
                              isCourse: model.bookables[index].type == null,
                              ontap: () {
                                model.cardSelected(index);
                              },
                              reserve: ReserveModel(
                                  dateTo: model.bookables[index].date_to ?? "",
                                  dateFrom:
                                      model.bookables[index].date_from ?? "",
                                  startTime:
                                      model.bookables[index].start_time ?? "",
                                  endTime:
                                      model.bookables[index].end_time ?? "",
                                  instructor:
                                      model.bookables[index].admin != null
                                          ? model.bookables[index].admin!
                                                  .fullname ??
                                              ""
                                          : "",
                                  restantes: 10,
                                  image: model.bookables[index].image ?? "",
                                  title: model.bookables[index].name!
                                      .toUpperCase(),
                                  description:
                                      model.bookables[index].description ?? ""),
                            ),
                          ),
                  ),
          ],
        ),
      ),
      viewModelBuilder: () => ReservationListModel(),
    );
  }
}
