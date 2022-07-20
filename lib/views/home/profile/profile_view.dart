import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/views/home/profile/document_card_view.dart';
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
                        padding: EdgeInsets.only(top: 35.h),
                        color: backgroundColor,
                        height: 140.h,
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
                              height: 140.h,
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
                                        model.user!.fullname ?? "",
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      child: Container(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          controller: model.scrollController,
                          children: [
                            buildTile(children: [
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 50.w, right: 50.w, bottom: 10.h),
                                    child: Column(
                                      children: [
                                        infoContainer(
                                            "Adresse mail", model.user!.email!),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        infoContainer(
                                            "Numéro de téléphone",
                                            model.user!.SIA_number ??
                                                "Not Specified"),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        infoContainer("Adresse postale",
                                            model.user!.address!),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: -5,
                                      right: 0.w,
                                      child: ElevatedButton(
                                        onPressed: model.editInformation,
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0.2,
                                          shape: const CircleBorder(),
                                          padding: const EdgeInsets.all(5),
                                          primary:
                                              Colors.white, // <-- Button color
                                          onPrimary:
                                              buttonColor, // <-- Splash color
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.edit,
                                          color: backgroundColor,
                                          size: 22.w,
                                        )),
                                      ))
                                ],
                              ),
                            ], title: "INFORMATION PERSONNELLES", model: model),
                            buildTile(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 50.w,
                                            right: 50.w,
                                            bottom: 10.h),
                                        child: Column(
                                          children: const [
                                            Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempus a nisi nec dapibus. Proin velit nulla, ultricies at leo quis, accumsan malesuada ipsum. Etiam porttitor pulvinar ipsum vel maximus. Morbi vitae malesuada tortor, ut rhoncus tellus. Morbi rhoncus metus eu diam venenatis interdum. "),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          top: -5,
                                          right: 0.w,
                                          child: ElevatedButton(
                                            onPressed: model.editExperience,
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0.2,
                                              shape: const CircleBorder(),
                                              padding: const EdgeInsets.all(5),
                                              primary: Colors
                                                  .white, // <-- Button color
                                              onPrimary:
                                                  buttonColor, // <-- Splash color
                                            ),
                                            child: Center(
                                                child: Icon(
                                              Icons.edit,
                                              color: backgroundColor,
                                              size: 22.w,
                                            )),
                                          ))
                                    ],
                                  )
                                ],
                                title: "Expériences".toUpperCase(),
                                model: model),
                            buildTile(children: [
                              SizedBox(
                                width: double.infinity,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 50.w,
                                          right: 50.w,
                                          bottom: 10.h),
                                      child: Column(
                                        children: const [
                                          Text(
                                              "TANFOGLIO STOCK III\n GLOCK 17 GEN 5\n MUNITIONS CCI MINI-MAG\n CALIBRE\n Lunette de protectio\n Oreillette anti-bruit \n Cibles et patches"),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        top: -5,
                                        right: 0.w,
                                        child: ElevatedButton(
                                          onPressed: model.editExperience,
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0.2,
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(5),
                                            primary: Colors
                                                .white, // <-- Button color
                                            onPrimary:
                                                buttonColor, // <-- Splash color
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.edit,
                                            color: backgroundColor,
                                            size: 22.w,
                                          )),
                                        ))
                                  ],
                                ),
                              )
                            ], title: "EQUIPEMENTS", model: model),
                            buildTile(children: [
                              Container(
                                color: docBackground,
                                height: 10.h,
                              ),
                              DocumentCardView(onTap: model.uploadDocument),
                              DocumentCardView(onTap: model.uploadDocument),
                              DocumentCardView(onTap: model.uploadDocument),
                              DocumentCardView(onTap: model.uploadDocument),
                              Container(
                                color: docBackground,
                                height: 10.h,
                              ),
                            ], title: "DOCUMENTS", model: model)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }

  Widget buildTile(
      {required List<Widget> children,
      required String title,
      required ProfileViewModel model}) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.grey.withOpacity(0.5)))),
      child: ExpansionTile(
          // tilePadding: const EdgeInsets.all(0),
          onExpansionChanged: (x) {
            if (x) {
              model.scrollDown();
            }
          },
          collapsedTextColor: Colors.black,
          collapsedIconColor: Colors.black,
          iconColor: buttonColor,
          textColor: buttonColor,
          title: Text(
            title,
            style: TextStyle(fontSize: 17.sp),
          ),
          children: children),
    );
  }
}

Widget infoContainer(String title, String value) => SizedBox(
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
