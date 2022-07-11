import 'package:egczacademy/app/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/color.dart';
import '../../shared/ui_helper.dart';
import 'package:stacked/stacked.dart';
import 'profile_viewModel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                color: kcWhite,
                height: size(context).height,
                width: size(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.h),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 0.75), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                imagelBigLogo,
                                scale: 2,
                                color: kcWhite.withOpacity(0.4),
                              ),
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.9),
                              height: 195.h,
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 100.w,
                                    child: model.user!.image != null
                                        ? Image.network(
                                            "$urlServer/${model.user!.image!.path}${model.user!.image!.filename}",
                                            fit: BoxFit.cover,
                                            scale: 5,
                                          )
                                        : Image.asset(
                                            profileImage,
                                            scale: 5,
                                          ),
                                  ),
                                  horizontalSpaceMedium(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        model.user!.fullname!,
                                        style: TextStyle(
                                          color: kcWhite,
                                          fontSize: 22.sp,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            secureIcon,
                                            color: buttonColor,
                                            scale: 3,
                                          ),
                                          horizontalSpaceSmall(),
                                          Text(
                                            model.userValidate,
                                            style: ThemeData()
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                  color: kcWhite,
                                                  fontSize: 15.sp,
                                                ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        model.user!.address!,
                                        style: ThemeData()
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                color: buttonColor,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                right: 0,
                                child: IconButton(
                                    onPressed: model.editProrifle,
                                    icon: const Icon(
                                      Icons.edit,
                                      color: buttonColor,
                                    )))
                          ],
                        )),
                    Expanded(
                      child: ListView(
                        children: docs.map(buildTile).toList(),
                      ),
                    )
                  ],
                ),
              ),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }

  Widget childCard() {
    return Container(
      width: double.infinity,
      height: 65.h,
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

  Widget buildTile(DocsTile docs) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.grey.withOpacity(0.5)))),
      child: ExpansionTile(
          collapsedTextColor: Colors.black,
          collapsedIconColor: Colors.black,
          iconColor: buttonColor,
          textColor: buttonColor,
          title: Text(
            docs.title,
            style: TextStyle(fontSize: 17.sp),
          ),
          children: docs.children),
    );
  }
}

List<DocsTile> docs = [
  DocsTile(title: "INFORMATION", children: [
    infoContainer("Adresse mail", "john.doe@gmail.com"),
    SizedBox(
      height: 5.h,
    ),
    infoContainer("Numéro de téléphone", "06 00 00 00 00"),
    SizedBox(
      height: 5.h,
    ),
    infoContainer("Adresse postale", "123 rue des Lilas"),
    SizedBox(
      height: 5.h,
    ),
  ]),
  DocsTile(title: "EXPERIENCES", children: [
    Container(
      color: Colors.red,
    )
  ]),
  DocsTile(title: "EQUIPEMENTS", children: [
    Container(
      color: Colors.red,
    )
  ]),
  DocsTile(title: "DOCUMENTS", children: [
    Container(
      color: Colors.red,
    )
  ])
];

Widget infoContainer(String title, String value) => Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 13.sp),
          ),
          Text(value)
        ],
      ),
    );

class DocsTile {
  String title;
  List<Widget> children;
  DocsTile({
    required this.title,
    required this.children,
  });
}
