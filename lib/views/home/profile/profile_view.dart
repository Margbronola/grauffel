import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/app/global.dart';

import '../../shared/color.dart';
import '../../shared/ui_helper.dart';
import 'document_card_view.dart';
import 'profile_viewModel.dart';

class ProfileView extends StatelessWidget {
  final bool isFromHome;
  const ProfileView({
    Key? key,
    required this.isFromHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      onModelReady: (model) async => await model.init(isFromHome: isFromHome),
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.grey,
                ),
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
                                        ? CachedNetworkImage(
                                            imageUrl:
                                                "$urlServer/${model.user!.image!.path}${model.user!.image!.filename}",
                                            placeholder: (context, url) =>
                                                const Center(
                                                    child:
                                                        CircularProgressIndicator
                                                            .adaptive()),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
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
                            buildTile(
                                index: 0,
                                controller: model.expanTileController1,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 50.w,
                                          right: 50.w,
                                          bottom: 10.h),
                                      child: Column(
                                        children: [
                                          infoContainer("Adresse mail",
                                              model.user!.email!),
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
                                    editButton(model.editInformation)
                                  ],
                                ),
                                title: "INFORMATION PERSONNELLES",
                                model: model),
                            buildTile(
                                index: 1,
                                controller: model.expanTileController2,
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
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempus a nisi nec dapibus. Proin velit nulla, ultricies at leo quis, accumsan malesuada ipsum. Etiam porttitor pulvinar ipsum vel maximus. Morbi vitae malesuada tortor, ut rhoncus tellus. Morbi rhoncus metus eu diam venenatis interdum. "),
                                        ],
                                      ),
                                    ),
                                    editButton(
                                      model.editExperience,
                                    )
                                  ],
                                ),
                                title: "Expériences".toUpperCase(),
                                model: model),
                            buildTile(
                                index: 2,
                                controller: model.expanTileController3,
                                child: SizedBox(
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
                                      editButton(
                                        model.editExperience,
                                      )
                                    ],
                                  ),
                                ),
                                title: "EQUIPEMENTS",
                                model: model),
                            buildTile(
                                index: 3,
                                controller: model.expanTileController4,
                                child: model.documentLoader == true
                                    ? SizedBox(
                                        height: size(context).height / 2,
                                        width: size(context).width,
                                        child: ListView(
                                          children: [
                                            for (int i = 0; i <= 5; i++)
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 10),
                                                width: size(context).width,
                                                height: 90.h,
                                                child: Shimmer.fromColors(
                                                  baseColor: greyLighter2,
                                                  highlightColor: Colors.white,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ))
                                    : Column(
                                        children: [
                                          ...model.documentTypes
                                              .map((e) => DocumentCardView(
                                                    expiration: model
                                                        .expirationDate(e.id!),
                                                    isValid: model.isNew(e.id!),
                                                    cardColor: model
                                                            .isProcessing(e.id!)
                                                        ? greyLight3
                                                        : kcWhite,
                                                    onTap: () {
                                                      model.uploadDocument(
                                                          documentTypeModel: e);
                                                    },
                                                    documentTypeModel: e,
                                                  ))
                                              .toList()
                                        ],
                                      ),
                                title: "DOCUMENTS",
                                model: model)
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
      {required ExpandedTileController controller,
      required Widget child,
      required String title,
      required ProfileViewModel model,
      required int index}) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: greyLight),
          ),
        ),
        child: ExpandedTile(
          onTap: () {
            model.ontapInfo(index);
          },
          trailing: null,
          leading: Transform.rotate(
            angle: model.angles[index], //set the angel
            child: Container(
              child: const Icon(
                Icons.chevron_right_outlined,
                color: Colors.black,
              ),
            ),
          ),
          theme: const ExpandedTileThemeData(
            headerColor: Colors.white,
            headerPadding: EdgeInsets.all(15.0),
            headerSplashColor: buttonColor,
            contentBackgroundColor: greyLight3,
            contentPadding: EdgeInsets.all(24.0),
            contentRadius: 0,
          ),
          controller: controller,
          title: Text(title),
          content: child,
          onLongTap: () {
            debugPrint("long tapped!!");
          },
        ),
      ),
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
Widget editButton(Function() ontap) => Positioned(
    top: -5,
    right: -15.w,
    child: ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        elevation: 0.2,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(5),
        primary: Colors.white, // <-- Button color
        onPrimary: buttonColor, // <-- Splash color
      ),
      child: Center(
          child: Icon(
        Icons.edit,
        color: backgroundColor,
        size: 22.w,
      )),
    ));
