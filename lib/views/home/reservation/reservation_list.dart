import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import '../../../models/reserve_model.dart';
import '../../shared/color.dart';
import 'package:stacked/stacked.dart';
import '../../shared/widget/header/header.dart';
import '../../shared/widget/reserveCard.dart';
import 'reservation_listModel.dart';

class ReservationList extends StatelessWidget {
  const ReservationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReservationListModel>.reactive(
      onModelReady: (model) async => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  const Header(title: "réservation"),
                  verticalSpaceSmall(),
                  Expanded(
                      child: ListView.builder(
                          itemCount: model.bookables.length,
                          itemBuilder: (context, index) => ReserveCard(
                              ontap: () {
                                if (index == 3) {
                                  model.navigateToReservationCell();
                                } else {
                                  model.navigateToReservation(
                                      bookable: model.bookables[index]);
                                }
                              },
                              reserve: ReserveModel(
                                  image: "mask1",
                                  title: model.bookables[index].name!
                                      .toUpperCase(),
                                  description:
                                      model.bookables[index].description!)))),
                ],
              ),
      ),
      viewModelBuilder: () => ReservationListModel(),
    );
  }
}
