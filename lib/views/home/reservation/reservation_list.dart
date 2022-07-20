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
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        body: Column(
          children: [
            const Header(title: "réservation"),
            verticalSpaceSmall(),
            Expanded(
              child: ListView(
                children: [
                  ReserveCard(
                      ontap: model.navigateToReservation,
                      reserve: const ReserveModel(
                          image: "mask1",
                          title: "PAS DE TIR",
                          description:
                              "Pour vous et vos amisafin de pratiquer le tir 25mou du Fun Shoot en dehorsdes heures d'ouverture")),
                  ReserveCard(
                      ontap: model.navigateToReservation,
                      reserve: const ReserveModel(
                          image: "mask2",
                          title: "Alvéole",
                          description:
                              "Vivre une expérience uniquedans le domaine du tir")),
                  ReserveCard(
                      ontap: model.navigateToReservation,
                      reserve: const ReserveModel(
                          image: "mask3",
                          title: "COURS TSV",
                          description:
                              "Réservés aux abonnés Gold TSV & Black")),
                ],
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => ReservationListModel(),
    );
  }
}
