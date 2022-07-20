import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../color.dart';

class ArmDetails extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const ArmDetails({Key? key, this.request, this.completer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          color: kcWhite,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Glock 19 Gen 5",
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 277.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: backgroundColor,
                              size: 20.w,
                            ),
                            Image.asset(
                              "assets/images/gun.png",
                              width: 212.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: backgroundColor,
                              size: 20.w,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Référence",
                                style:
                                    TextStyle(color: kcWhite, fontSize: 11.sp),
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 20.h),
                        child: Text(
                          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
                                          Parmi les changements de conception, il y a 5 caractéristiques principales.
                                            Le GLOCK Marksman Barrel (GMB) utilise un nouveau profil de rayures pour offrir une précision améliorée.
                                            L'enlèvement des empreintes des doigts et un arrêtoir de culasse ambidextre ajouté offrent un contrôle et une flexibilité améliorés. 
                                            La finition nDLC est une finition plus dure et de meilleur longévité qui est exclusive au processus de fabrication GLOCK. 
                                            L'introduction d'un puit de chargeur évasé augmente les performances en facilitant l'introduction du magazine dans celui-ci, en particulier dans les situations de stress.""",
                          maxLines: 14,
                          style: TextStyle(
                            fontSize: 11.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: backgroundColor,
            ))
      ],
    ));
  }
}
