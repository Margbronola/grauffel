// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:egczacademy/views/reservation/cardDetails/reserve_card_details_view_model.dart';
import 'package:egczacademy/views/shared/widget/myloader.dart';
import '../../shared/color.dart';
import '../../shared/ui_helper.dart';
import '../../shared/widget/item_card.dart';

class ReserveCardDetailsView extends StatelessWidget {
  final int bookId;

  const ReserveCardDetailsView({
    Key? key,
    required this.bookId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReserveCardDetailsViewModel>.reactive(
      onModelReady: (model) async => model.init(bookId),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        appBar: AppBar(
          backgroundColor: kcWhite,
          elevation: 0,
          leadingWidth: 200,
          leading: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: model.isBusy
              ? Center(
                  child: Myloader(
                    logoColor: buttonColor.withOpacity(0.8),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpaceMedium(),
                    // Text(
                    //   widget.user.first_name!,
                    //   style: TextStyle(fontFamily: 'ProductSans', fontSize: 22.sp),
                    // ),
                    Text(
                      "Vous avez réservé".toUpperCase(),
                      style:
                          TextStyle(fontFamily: 'ProductSans', fontSize: 22.sp),
                    ),
                    verticalSpaceMedium(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/cross.png",
                              width: 27.w,
                              color: Colors.black,
                            ),
                            verticalSpaceSmall(),
                            Text(
                              model.book!.name!,
                              style: const TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/calendar.png",
                              width: 27.w,
                              color: Colors.black,
                            ),
                            verticalSpaceSmall(),
                            Text(
                              DateFormat.MMMEd('fr').format(model.book!.start!),
                              style: const TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/time.png",
                              width: 27.w,
                              color: Colors.black,
                            ),
                            verticalSpaceSmall(),
                            Text(
                              model.time(),
                              style: const TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceMedium(),
                    //GunList
                    Expanded(
                      child: ListView(
                        children: [
                          Column(
                              children: model.book!.guns!
                                  .map((e) => Padding(
                                        padding: EdgeInsets.only(bottom: 10.h),
                                        child: ItemCard(
                                          image: e.image_thumb_url,
                                          title: e.model!,
                                          brand: e.brand!.name!,
                                          reference: "Référence",
                                          extraButton: null,
                                          titleQuantity: "",
                                        ),
                                      ))
                                  .toList()),
                          Column(
                              children: model.book!.ammunitions!
                                  .map((e) => Padding(
                                        padding: EdgeInsets.only(bottom: 10.h),
                                        child: ItemCard(
                                          titleQuantity: " boîtes de 50",
                                          extraButton:
                                              e.pivot!.quantity.toString(),
                                          image: e.image_thumb_url,
                                          title: e.name!,
                                          brand: e.brand!.name!,
                                          reference: "Référence",
                                        ),
                                      ))
                                  .toList()),
                          Column(
                              children: model.book!.equipements!
                                  .map((e) => Padding(
                                        padding: EdgeInsets.only(bottom: 10.h),
                                        child: ItemCard(
                                          titleQuantity: e.quantity > 1
                                              ? " pièces"
                                              : " pièce",
                                          extraButton:
                                              e.pivot!.quantity.toString(),
                                          image: e.image_thumb_url == null
                                              ? null
                                              : e.image_thumb_url!,
                                          title: e.name!,
                                          brand: e.type.toString(),
                                          reference: "Référence",
                                        ),
                                      ))
                                  .toList()),
                          verticalSpaceMedium(),
                          Text(
                            model.htmlToText(
                                htmlFormatData: model.book!.description ?? ""),
                            style: const TextStyle(
                                fontFamily: 'ProductSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          verticalSpaceMedium(),
                        ],
                      ),
                    )
                  ],
                ),
        ),
      ),
      viewModelBuilder: () => ReserveCardDetailsViewModel(),
    );
  }
}
