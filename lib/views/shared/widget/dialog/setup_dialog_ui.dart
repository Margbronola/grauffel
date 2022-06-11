import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../customButton.dart';

enum DialogType { basic, arm }

void setupDialogUi() {
  final dialogService = locator<DialogService>();
  final builders = {
    DialogType.basic: (context, sheetRequest, completer) =>
        _BasicDialog(request: sheetRequest, completer: completer),
    DialogType.arm: (context, sheetRequest, completer) =>
        _ArmDetails(request: sheetRequest, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}

class _BasicDialog extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const _BasicDialog({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kcWhite, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: size(context).height / 4.h,
          child: Column(
            children: [
              Container(
                height: 131.h,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Réservation",
                      style: ThemeData().textTheme.headlineSmall!.copyWith(
                            fontSize: 22.sp,
                          ),
                    ),
                    Text(
                      "Pas de tir",
                      style: ThemeData()
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 22.sp, color: buttonColor),
                    ),
                  ],
                ),
              ),
              CustomButton(
                  title: "l'activité souhaitée",
                  onTap: () {
                    completer!(DialogResponse(confirmed: true));
                  }),
              CustomButton(
                  title: "mes disponibilités",
                  onTap: () {
                    completer!(DialogResponse(confirmed: false));
                  }),
            ],
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.grey,
              ),
            )),
      ],
    ));
  }
}

class _ArmDetails extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const _ArmDetails({Key? key, this.request, this.completer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          color: kcWhite,
          child: Column(
            children: [
              Container(
                height: 345.h,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Glock 19 Gen 5",
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 277.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: backgroundColor,
                            ),
                            Image.asset(
                              "assets/images/gun.png",
                              width: 212.w,
                              height: 262.h,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: backgroundColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 58.h,
                width: double.infinity,
                color: Colors.black,
                child: Center(
                  child: SizedBox(
                    width: 277.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Référence",
                              style: TextStyle(color: kcWhite, fontSize: 11.sp),
                            ),
                            Text(
                              "SH2-BUSH-CER",
                              style: TextStyle(
                                  color: kcWhite,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Marque",
                              style: TextStyle(color: kcWhite, fontSize: 11.sp),
                            ),
                            Text(
                              "CZ",
                              style: TextStyle(
                                  color: kcWhite,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium(),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 277.h,
                      width: 277.w,
                      child: Text(
                        """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
                  Parmi les changements de conception, il y a 5 caractéristiques principales. 
Le GLOCK Marksman Barrel (GMB) utilise un nouveau profil de rayures pour offrir une précision améliorée.
L'enlèvement des empreintes des doigts et un arrêtoir de culasse ambidextre ajouté offrent un contrôle et une flexibilité améliorés. 
La finition nDLC est une finition plus dure et de meilleur longévité qui est exclusive au processus de fabrication GLOCK. 
L'introduction d'un puit de chargeur évasé augmente les performances en facilitant l'introduction du magazine dans celui-ci, en particulier dans les situations de stress.""",
                        style: TextStyle(fontSize: 11.sp),
                      ),
                    ),
                    Container(
                        width: 277.w,
                        child: CustomButton(
                            title: "Choisir cette arme",
                            onTap: () {
                              completer!(DialogResponse(confirmed: true));
                            }))
                  ],
                ),
              )
            ],
          ),
        ),
        BackButton(
          color: Colors.black,
        )
      ],
    ));
  }
}
