import 'package:egczacademy/models/book_model.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../app/global.dart';
import '../reservation_view_model.dart';

class NewReservationCard extends StatelessWidget {
  const NewReservationCard(
      {super.key,
      required this.data,
      required this.fromPast,
      required this.model});
  final BookModel data;
  final bool fromPast;
  final ReservationViewModel model;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Card(
        color: fromPast ? greyLight3 : kcWhite,
        child: LayoutBuilder(builder: (context, c) {
          final double w = c.maxWidth;
          return MaterialButton(
            padding: const EdgeInsets.all(0),
            onPressed: () async {
              //TODO: show details of card
              print("Show details");
              model.showDetailsCardNew(
                data.id,
              );
            },
            child: Row(
              children: [
                Container(
                  width: w * .35,
                  height: c.maxHeight,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "${DateFormat('E', "fr_FR").format(data.start).toUpperCase()}.",
                        textAlign: TextAlign.center,
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              color: buttonColor,
                              fontSize: 14.sp,
                            ),
                      ),
                      Text(
                        "${DateFormat('dd').format(data.start)} ${DateFormat('MMM').format(data.start).toUpperCase()}",
                        textAlign: TextAlign.center,
                        style: ThemeData().textTheme.headlineSmall!.copyWith(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              color: buttonColor,
                              fontSize: 18.sp,
                            ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            "${data.start.hour}h${data.start.minute.toString().length > 1 ? data.start.minute : ("0${data.start.minute}")}",
                            style: ThemeData()
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'ProductSans',
                                    color: backgroundColor,
                                    fontSize: 16.sp),
                          ),
                          Text(
                            "${data.end.hour}h${data.end.minute.toString().length > 1 ? data.end.minute : ("0${data.end.minute}")}",
                            style: ThemeData()
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'ProductSans',
                                    color: backgroundColor,
                                    fontSize: 16.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  color: buttonColor,
                  height: c.maxHeight,
                  width: 3,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: LayoutBuilder(builder: (context, cc) {
                    final double ww = cc.maxWidth;
                    final double hh = cc.maxHeight;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.name.toUpperCase(),
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: ThemeData().textTheme.headlineSmall!.copyWith(
                              color: buttonColor,
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Expanded(
                          child: Text(
                            removeHtmlTags(data.description),
                            overflow: TextOverflow.fade,
                            style:
                                ThemeData().textTheme.headlineSmall!.copyWith(
                                      color: Colors.grey,
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            maxLines: fromPast ? 4 : 3,
                          ),
                        ),
                        if (!fromPast) ...{
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 20,
                              width: 70.w,

                              // color: Colors.grey,
                              child: MaterialButton(
                                height: 30,
                                padding: const EdgeInsets.all(0),
                                onPressed: () async {
                                  model.cancelBook(data.id);
                                },
                                child: Text(
                                  "Annuler".toUpperCase(),
                                  style: ThemeData()
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          color: buttonColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                ),
                              ),
                            ),
                          )
                        },
                      ],
                    );
                  }),
                ))
              ],
            ),
          );
        }),
        // child: Card(
        //   // elevation: widget.isActive ? 5 : null,
        //   // color: widget.isActive ? Colors.white : Colors.white60,
        //   color: kcWhite,
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: Container(
        //           padding: const EdgeInsets.all(10),
        //           child: Row(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 padding: const EdgeInsets.symmetric(
        //                   vertical: 5,
        //                 ),
        //                 width: 80.w,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Expanded(
        //                       child: Column(
        //                         children: [
        // Text(
        //   "${DateFormat('E').format(data.start).i18n().toUpperCase()}.",
        //   textAlign: TextAlign.center,
        //   style: ThemeData()
        //       .textTheme
        //       .headlineSmall!
        //       .copyWith(
        //         fontFamily: 'ProductSans',
        //         fontWeight: FontWeight.bold,
        //         color: buttonColor,
        //         fontSize: 14.sp,
        //       ),
        // ),
        // Text(
        //   "${DateFormat('dd').format(data.start)} ${DateFormat('MMM').format(data.start).toUpperCase()}",
        //   textAlign: TextAlign.center,
        //   style: ThemeData()
        //       .textTheme
        //       .headlineSmall!
        //       .copyWith(
        //         fontFamily: 'ProductSans',
        //         fontWeight: FontWeight.bold,
        //         color: buttonColor,
        //         fontSize: 18.sp,
        //       ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                     // const Spacer(),
        //                     // verticalSpaceSmall(),
        // Text(
        //   "${data.start.hour}h${data.start.minute.toString().length > 1 ? data.start.minute : ("0${data.start.minute}")}",
        //   style: ThemeData()
        //       .textTheme
        //       .headlineSmall!
        //       .copyWith(
        //           fontWeight: FontWeight.bold,
        //           fontFamily: 'ProductSans',
        //           color: backgroundColor,
        //           fontSize: 16.sp),
        // ),
        // Text(
        //   "${data.end.hour}h${data.end.minute.toString().length > 1 ? data.end.minute : ("0${data.end.minute}")}",
        //   style: ThemeData()
        //       .textTheme
        //       .headlineSmall!
        //       .copyWith(
        //           fontWeight: FontWeight.bold,
        //           fontFamily: 'ProductSans',
        //           color: backgroundColor,
        //           fontSize: 16.sp),
        // ),
        //                   ],
        //                 ),
        //               ),
        // Container(
        //   color: buttonColor,
        //   height: size(context).height,
        //   width: 3,
        // ),
        //               horizontalSpaceMedium(),
        //               Expanded(
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     Text(
        //                       data.name.toUpperCase(),
        //                       overflow: TextOverflow.clip,
        //                       maxLines: 2,
        //                       style: ThemeData()
        //                           .textTheme
        //                           .headlineSmall!
        //                           .copyWith(
        //                               color: buttonColor,
        //                               fontFamily: 'ProductSans',
        //                               fontWeight: FontWeight.bold,
        //                               fontSize: 18.sp),
        //                     ),
        //                     SizedBox(
        //                       height: 5.h,
        //                     ),
        //                     data.description == null
        //                         ? FittedBox(
        //                             child: Column(
        //                               crossAxisAlignment:
        //                                   CrossAxisAlignment.start,
        //                               children: [
        //                                 Row(
        //                                   children: [
        //                                     const Icon(
        //                                       Icons.calendar_month,
        //                                       color: buttonColor,
        //                                     ),
        //                                     horizontalSpaceSmall(),
        //                                     Text(
        //                                       "du ${dateFormat(data.start)} au ${dateFormat(data.end)}",
        //                                       overflow: TextOverflow.clip,
        //                                     )
        //                                   ],
        //                                 ),
        //                               ],
        //                             ),
        //                           )
        //                         : Expanded(
        //                             child: Container(
        //                               color: Colors.red,
        //                               child: Text(
        //                                 removeHtmlTags(data.description),
        //                                 overflow: TextOverflow.fade,
        //                                 style: ThemeData()
        //                                     .textTheme
        //                                     .headlineSmall!
        //                                     .copyWith(
        //                                       color: Colors.grey,
        //                                       fontFamily: 'ProductSans',
        //                                       fontWeight: FontWeight.bold,
        //                                       fontSize: 12.sp,
        //                                       overflow: TextOverflow.ellipsis,
        //                                     ),
        //                                 maxLines: 4,
        //                               ),
        //                             ),
        //                           )
        //                   ],
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //       if (!fromPast) ...{
        // Align(
        //   alignment: Alignment.centerRight,
        //   child: TextButton(
        //     onPressed: () {},
        //     child: Text(
        //       "Annuler".toUpperCase(),
        //       style: ThemeData().textTheme.headlineSmall!.copyWith(
        //           color: buttonColor,
        //           fontWeight: FontWeight.bold,
        //           fontSize: 10),
        //     ),
        //   ),
        // )
        //         // Positioned(
        //         //   bottom: 0,
        //         //   right: 0,
        //         //   child: Center(
        //         //     child:
        //         //   ),
        //         // )
        //       },
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
