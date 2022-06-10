import 'package:egczacademy/views/home/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/color.dart';
import '../../shared/ui_helper.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kcWhite,
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0.75), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  height: 125.h,
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/profile.png",
                        scale: 5,
                      ),
                      horizontalSpaceMedium(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BONJOUR JOHN",
                            style:
                                ThemeData().textTheme.headlineSmall!.copyWith(
                                      color: kcWhite,
                                      fontSize: 20.sp,
                                    ),
                          ),
                          Text(
                            "Profile pic",
                            style:
                                ThemeData().textTheme.headlineSmall!.copyWith(
                                      color: Colors.grey,
                                      fontSize: 10.sp,
                                    ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
              child: ListView(
                children: docs.map(buildTile).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget childCard() {
    return Container(
      width: double.infinity,
      height: 48,
      color: greyLight,
      child: Card(
        color: kcWhite,
        child: Padding(
          padding: EdgeInsets.only(top: 6.h, right: 25.w, left: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ajouter",
                    style: ThemeData().textTheme.headlineSmall!.copyWith(
                          color: buttonColor,
                          fontSize: 12.sp,
                        ),
                  ),
                  Text(
                    "Pièce d'identité / passeport",
                    style: ThemeData().textTheme.headlineSmall!.copyWith(
                          color: backgroundColor,
                          fontSize: 15.sp,
                        ),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/docfile.png",
                height: 30.h,
                width: 23.w,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTile(DocsTile tile) {
    return ExpansionTile(
        // ignore: sort_child_properties_last
        children: [childCard(), childCard()],
        collapsedTextColor: Colors.black,
        collapsedIconColor: Colors.black,
        iconColor: buttonColor,
        textColor: buttonColor,
        title: Text(tile.title));
  }
}

List<DocsTile> docs = [
  DocsTile(title: "INFORMATION PERSONNELLES"),
  DocsTile(title: "EXPERIENCES"),
  DocsTile(title: "EQUIPEMENTS"),
  DocsTile(title: "DOCUMENTS")
];

class DocsTile {
  String title;
  DocsTile({
    required this.title,
  });
}
