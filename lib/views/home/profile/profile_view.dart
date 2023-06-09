import 'package:cached_network_image/cached_network_image.dart';
import 'package:egczacademy/views/shared/widget/menuButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';
import '../../../app/global.dart';
import '../../shared/color.dart';
import '../../shared/ui_helper.dart';
import 'document_card_view.dart';
import 'profile_view_model.dart';

class ProfileView extends StatelessWidget {
  final bool isFromHome;
  const ProfileView({
    Key? key,
    required this.isFromHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      onViewModelReady: (model) async =>
          await model.init(isFromHome: isFromHome),
      builder: (context, model, child) => Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              toolbarHeight: size(context).height * 0.1,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
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
                      color: Colors.black.withOpacity(0.5),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: model.user?.image != null
                                  ? CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "$urlServer/${model.user!.image!.path}${model.user!.image!.filename}",
                                      placeholder: (context, url) =>
                                          const Center(
                                              child: CircularProgressIndicator
                                                  .adaptive()),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    )
                                  : Image.asset(
                                      profileImage,
                                      scale: 7,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                          horizontalSpaceMedium(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                          const Spacer(),
                          const MenuButton()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black,
                  ),
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
                    Expanded(
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
                                      left: 50.w, right: 50.w, bottom: 10.h),
                                  child: Column(
                                    children: [
                                      infoContainer(
                                          "Adresse mail",
                                          model.user?.email ?? "",
                                          double.infinity),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      model.user!.birthday != null
                                          ? infoContainer(
                                              "Date de naissance",
                                              '${model.user!.birthday!.split("-")[1].length == 1 ? "0${model.user!.birthday!.split("-")[1]}" : model.user!.birthday!.split("-")[1]}/${model.user!.birthday!.split("-")[2]}/${model.user!.birthday!.split("-")[0]}',
                                              double.infinity)
                                          : const SizedBox(),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      model.user?.client_badge != null
                                          ? infoContainer(
                                              "Numéro de badge",
                                              model.user!.client_badge!.isEmpty
                                                  ? "Not Specified"
                                                  : model.user!.client_badge ??
                                                      "",
                                              double.infinity,
                                              isWithBadge: model
                                                      .user!.reduced_mobility ==
                                                  1)
                                          : const SizedBox(),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      model.user?.FFTir_license_number != null
                                          ? infoContainer(
                                              "Numéro de Licence",
                                              model.user!.FFTir_license_number!
                                                      .isEmpty
                                                  ? "Not Specified"
                                                  : model.user!
                                                          .FFTir_license_number ??
                                                      "",
                                              double.infinity)
                                          : const SizedBox(),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      model.user?.phone_number != null
                                          ? infoContainer(
                                              "Numéro de téléphone",
                                              model.user!.phone_number!.isEmpty
                                                  ? "Not Specified"
                                                  : model.user!.phone_number ??
                                                      "",
                                              double.infinity)
                                          : const SizedBox(),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          infoContainer("Code postale",
                                              model.user!.zipcode ?? "", 80.w),
                                          infoContainer("City",
                                              model.user!.city ?? '', 100.w),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          infoContainer(
                                              "Ville",
                                              model.user!.country != null
                                                  ? model.user!.country!.name ??
                                                      ""
                                                  : "",
                                              50.w),
                                          infoContainer(
                                              "Points de crédit",
                                              model.user!.credit_points != null
                                                  ? model.user!.credit_points ??
                                                      ""
                                                  : "",
                                              100.w),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                editButton(model.editInformation)
                              ],
                            ),
                            title: "INFORMATION PERSONNELLES",
                            model: model,
                          ),
                          buildTile(
                            index: 1,
                            controller: model.expanTileController2,
                            child: Stack(
                              children: [
                                Container(
                                  constraints: BoxConstraints(minHeight: 60.h),
                                  padding: EdgeInsets.only(
                                      left: 50.w, right: 50.w, bottom: 10.h),
                                  child: Column(
                                    children: [
                                      Text(
                                        model.user!.experience ?? "",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: 'ProductSans',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                editButton(
                                  model.editExperience,
                                )
                              ],
                            ),
                            title: "Expériences".toUpperCase(),
                            model: model,
                          ),
                          buildTile(
                            index: 2,
                            controller: model.expanTileController3,
                            child: SizedBox(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Container(
                                    constraints:
                                        BoxConstraints(minHeight: 60.h),
                                    padding: EdgeInsets.only(
                                        left: 50.w, right: 50.w, bottom: 10.h),
                                    child: Column(
                                      children: [
                                        Text(
                                          model.user!.equipment ?? "",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: 'ProductSans',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  editButton(
                                    model.editEquipments,
                                  )
                                ],
                              ),
                            ),
                            title: "EQUIPEMENTS",
                            model: model,
                          ),
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
                                                  10,
                                                ),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 20,
                                                vertical: 10,
                                              ),
                                              width: size(context).width,
                                              height: 90.h,
                                              child: Shimmer.fromColors(
                                                baseColor: greyLighter2,
                                                highlightColor: Colors.white,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ))
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Obligatoires",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'ProductSans',
                                              fontSize: 15.sp),
                                        ),
                                        verticalSpaceSmall(),
                                        ...model.mandatoryDocumentTypes
                                            .map((e) => DocumentCardView(
                                                  isViewed:
                                                      model.isViewed(e.id!),
                                                  status: model.status(e.id!),
                                                  expiration: model
                                                      .expirationDate(e.id!),
                                                  isNEw: model.isNew(e.id!),
                                                  isValid:
                                                      model.isValidated(e.id!),
                                                  isProcess:
                                                      model.isProcessing(e.id!),
                                                  cardColor:
                                                      model.isProcessing(e.id!)
                                                          ? greyLight3
                                                          : kcWhite,
                                                  onTap: () {
                                                    debugPrint("showdocsss");
                                                    if (model
                                                        .isProcessing(e.id!)) {
                                                      model.editDocuments(
                                                          documentTypeModel: e,
                                                          isEmpty: false);
                                                    } else {
                                                      model.editDocuments(
                                                          documentTypeModel: e,
                                                          isEmpty: true);
                                                    }
                                                  },
                                                  documentTypeModel: e,
                                                ))
                                            .toList(),
                                        verticalSpaceMedium(),
                                        Text(
                                          "Autres documents",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'ProductSans',
                                              fontSize: 15.sp),
                                        ),
                                        verticalSpaceSmall(),
                                        ...model.documentTypes
                                            .map((e) => DocumentCardView(
                                                  isProcess:
                                                      model.isProcessing(e.id!),
                                                  isViewed:
                                                      model.isViewed(e.id!),
                                                  status: model.status(e.id!),
                                                  expiration: model
                                                      .expirationDate(e.id!),
                                                  isNEw: model.isNew(e.id!),
                                                  isValid:
                                                      model.isValidated(e.id!),
                                                  cardColor:
                                                      model.isProcessing(e.id!)
                                                          ? greyLight3
                                                          : kcWhite,
                                                  onTap: () {
                                                    if (model
                                                        .isProcessing(e.id!)) {
                                                      model.editDocuments(
                                                          documentTypeModel: e,
                                                          isEmpty: false);
                                                    } else {
                                                      model.editDocuments(
                                                          documentTypeModel: e,
                                                          isEmpty: true);
                                                    }
                                                  },
                                                  documentTypeModel: e,
                                                ))
                                            .toList()
                                      ],
                                    ),
                              title: "DOCUMENTS",
                              model: model),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: model.signOut,
                        child: Text(
                          "Se déconnecter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            fontFamily: 'ProductSans',
                          ),
                        )),
                    verticalSpaceSmall()
                  ],
                ),
              ),
      )),
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
            child: const Icon(
              Icons.chevron_right_outlined,
              color: Colors.black,
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
          title: title == "DOCUMENTS"
              ? Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'ProductSans',
                      ),
                    ),
                    Text(
                      " ${model.numUploadedDoc}/${model.mandatoryDocumentTypes.length}",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'ProductSans',
                        color: buttonColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              : Text(
                  title,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'ProductSans',
                  ),
                ),
          content: child,
          onLongTap: () {
            debugPrint("long tapped!!");
          },
        ),
      ),
    );
  }
}

Widget infoContainer(String title, String value, double width,
        {bool isWithBadge = false}) =>
    SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: customDocGrey,
                  fontSize: 12.sp,
                  fontFamily: 'ProductSans',
                ),
                overflow: TextOverflow.ellipsis,
              ),
              isWithBadge
                  ? const Icon(
                      Icons.accessible_forward_sharp,
                      color: Colors.black,
                    )
                  : const SizedBox()
            ],
          ),
          Text(
            value,
            style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );

Widget editButton(Function() ontap) => Positioned(
      top: -5,
      right: -15.w,
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          foregroundColor: buttonColor, backgroundColor: Colors.white,
          elevation: 0.2,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(5), // <-- Splash color
        ),
        child: Center(
          child: Icon(
            Icons.edit,
            color: backgroundColor,
            size: 22.w,
          ),
        ),
      ),
    );
