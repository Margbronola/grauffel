import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:egczacademy/models/reserve_model.dart';
import '../color.dart';
import '../ui_helper.dart';
import 'package:intl/intl.dart';

class ReserveCard extends StatefulWidget {
  final ReserveModel reserve;
  final bool isCourse;
  final Function() ontap;

  const ReserveCard({
    Key? key,
    required this.reserve,
    required this.ontap,
    required this.isCourse,
  }) : super(key: key);

  @override
  State<ReserveCard> createState() => _ReserveCardState();
}

class _ReserveCardState extends State<ReserveCard> {
  String dateFormat(String date) {
    DateTime dateFormated = DateTime.parse(date);
    final DateFormat formatter = DateFormat('MMMM');
    final String formattedMonth = formatter.format(dateFormated);

    return "${dateFormated.day} $formattedMonth ${dateFormated.year}";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SizedBox(
          height: 175.h,
          child: Card(
            elevation: 3,
            color: kcWhite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size(context).height,
                  width: 110.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          widget.reserve.image!,
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.reserve.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: ThemeData().textTheme.bodyText1!.copyWith(
                              fontSize: 18.sp,
                              color: buttonColor,
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        !widget.isCourse
                            ? FittedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.calendar_month,
                                          color: buttonColor,
                                        ),
                                        horizontalSpaceSmall(),
                                        Text(
                                          "du ${dateFormat(widget.reserve.dateFrom!)} au ${dateFormat(widget.reserve.dateTo!)}",
                                          overflow: TextOverflow.clip,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.watch_later_sharp,
                                          color: buttonColor,
                                        ),
                                        horizontalSpaceSmall(),
                                        Text(
                                          "${widget.reserve.startTime!.split(":")[0]}h${widget.reserve.startTime!.split(":")[1]} à ${widget.reserve.endTime!.split(":")[0]}h${widget.reserve.endTime!.split(":")[1]}",
                                          overflow: TextOverflow.clip,
                                        )
                                      ],
                                    ),
                                    Text(
                                        "Votre instructeur : ${widget.reserve.instructor}"),
                                    // Text(
                                    //     "Nombre de places restantes : ${widget.reserve.restantes}")
                                  ],
                                ),
                              )
                            : Text(
                                widget.reserve.description!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    ThemeData().textTheme.bodyText1!.copyWith(
                                          fontSize: 12.sp,
                                          fontFamily: 'ProductSans',
                                        ),
                              ),
                      ],
                    ),
                  ),
                ),
                horizontalSpaceMedium(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
