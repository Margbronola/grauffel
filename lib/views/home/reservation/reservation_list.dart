import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:egczacademy/views/shared/ui_helper.dart';

import '../../shared/color.dart';

class ReservationList extends StatelessWidget {
  const ReservationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcWhite,
      body: Column(
        children: [
          Container(
            height: 67.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kcWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 0.75), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Réservation",
                style: ThemeData().textTheme.headlineSmall!.copyWith(
                      fontSize: 22.sp,
                    ),
              ),
            ),
          ),
          verticalSpaceMedium(),
          Expanded(
              child: ListView(
            children: [
              ReserveCard(
                  reserve: Reserve(
                      image: "mask1",
                      title: "PAS DE TIR",
                      description:
                          "Pour vous et vos amisafin de pratiquer le tir 25mou du Fun Shoot en dehorsdes heures d'ouverture")),
              ReserveCard(
                  reserve: Reserve(
                      image: "mask2",
                      title: "Alvéole",
                      description:
                          "Vivre une expérience uniquedans le domaine du tir")),
              ReserveCard(
                  reserve: Reserve(
                      image: "mask3",
                      title: "COURS TSV",
                      description: "Réservés aux abonnés Gold TSV & Black")),
            ],
          ))
        ],
      ),
    );
  }

  Widget ReserveCard({required Reserve reserve}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 2,
          color: kcWhite,
          child: Row(
            children: [
              Image.asset(
                "assets/images/${reserve.image}.png",
                height: 131.h,
                width: 110.w,
              ),
              horizontalSpaceMedium(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reserve.title,
                      style: ThemeData()
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18.sp, color: buttonColor),
                    ),
                    Text(
                      reserve.description,
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 12.sp,
                          ),
                    ),
                  ],
                ),
              ),
              horizontalSpaceMedium(),
            ],
          ),
        ),
      );
}

class Reserve {
  String image;
  String title;
  String description;
  Reserve({
    required this.image,
    required this.title,
    required this.description,
  });
}
