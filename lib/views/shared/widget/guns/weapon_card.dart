import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:egczacademy/views/shared/widget/guns/weapon_card_model.dart';
import '../../color.dart';

class WeaponCardView extends StatelessWidget {
  final int index;
  final dynamic data;
  const WeaponCardView({
    Key? key,
    required this.index,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WeaponCardViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: () {
          model.showDetails(index);
        },
        child: Container(
          decoration: BoxDecoration(
              border: model.selectedIndex == index
                  ? Border.all(color: buttonColor, width: 2)
                  : null,
              color: greyLighter,
              borderRadius: BorderRadius.circular(5)),
          width: 161.w,
          height: 167.h,
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 97.w,
                    height: 77.h,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(30)),
                        color: kcWhite,
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/${data.image}.png"))),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      data.name,
                      overflow: TextOverflow.ellipsis,
                      style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Référence",
                        style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "SH2-BUSH-CER",
                        style: ThemeData().textTheme.bodyText1!.copyWith(
                            fontSize: 10.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Marque",
                    style: ThemeData().textTheme.bodyText1!.copyWith(
                          fontSize: 10.sp,
                        ),
                  ),
                  Text(
                    "CZ",
                    style: ThemeData()
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 10.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => WeaponCardViewModel(),
    );
  }
}
