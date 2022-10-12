import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';

import '../../../../../models/document_type_model.dart';
import '../../../../shared/color.dart';
import 'file_upload_view_model.dart';

class FileUploadView extends StatelessWidget {
  final DocumentTypeModel documentTypeModel;
  final bool fromEditPage;
  final int selectedCard;
  const FileUploadView({
    Key? key,
    required this.documentTypeModel,
    this.fromEditPage = false,
    required this.selectedCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FileUploadViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: model.disableFloat ? Colors.grey : buttonColor,
          //   onPressed: model.disableFloat
          //       ? null
          //       : () {
          //           model.upload(documentTypeModel);
          //         },
          //   child: const Icon(
          //     Icons.upload,
          //     color: kcWhite,
          //   ),
          // ),
          appBar: AppBar(
            backgroundColor: backgroundColor,
          ),
          body: Column(
            children: [
              Expanded(
                  child: Container(
                color: backgroundColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        verticalSpaceMedium(),
                        // GestureDetector(
                        //   onTap: () {
                        //     model.selectCard(0);
                        //   },
                        //   child: Card(
                        //     color: model.selectedCard == 0
                        //         ? kcWhite
                        //         : kcWhite.withOpacity(0.7),
                        //     child: Center(
                        //       child: SizedBox(
                        //         height: 60,
                        //         width: 300,
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Row(
                        //               children: [
                        //                 Icon(
                        //                     model.fileFront != null
                        //                         ? Icons.check_box
                        //                         : Icons.check_box_outline_blank,
                        //                     color: buttonColor),
                        //                 horizontalSpaceSmall(),
                        //                 const Text("De face: "),
                        //                 model.fileFront != null
                        //                     ? SizedBox(
                        //                         width: 100,
                        //                         child: Text(
                        //                           model.fileFront!.path,
                        //                           overflow:
                        //                               TextOverflow.ellipsis,
                        //                         ),
                        //                       )
                        //                     : const Text(
                        //                         "aucun fichier choisi...")
                        //               ],
                        //             ),
                        //             Icon(
                        //                 model.selectedCard == 0
                        //                     ? Icons.radio_button_checked
                        //                     : Icons.radio_button_off,
                        //                 color: buttonColor),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // documentTypeModel.type != 1
                        //     ? const SizedBox()
                        //     : GestureDetector(
                        //         onTap: () {
                        //           model.selectCard(1);
                        //         },
                        //         child: Card(
                        //           color: model.selectedCard == 1
                        //               ? kcWhite
                        //               : kcWhite.withOpacity(0.7),
                        //           child: Center(
                        //             child: SizedBox(
                        //               height: 60,
                        //               width: 300,
                        //               child: Row(
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.spaceBetween,
                        //                 children: [
                        //                   Row(
                        //                     children: [
                        //                       Icon(
                        //                           model.fileBack != null
                        //                               ? Icons.check_box
                        //                               : Icons
                        //                                   .check_box_outline_blank,
                        //                           color: buttonColor),
                        //                       horizontalSpaceSmall(),
                        //                       const Text("Retour: "),
                        //                       model.fileBack != null
                        //                           ? SizedBox(
                        //                               width: 100,
                        //                               child: Text(
                        //                                 model.fileBack!.path,
                        //                                 overflow: TextOverflow
                        //                                     .ellipsis,
                        //                               ),
                        //                             )
                        //                           : const Text(
                        //                               "aucun fichier choisi...")
                        //                     ],
                        //                   ),
                        //                   Icon(
                        //                       model.selectedCard == 1
                        //                           ? Icons.radio_button_checked
                        //                           : Icons.radio_button_off,
                        //                       color: buttonColor),
                        //                 ],
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/file.png",
                              color: kcWhite,
                              width: 200.w,
                            ),
                            Positioned(
                              bottom: 5,
                              right: 20,
                              child: Container(
                                width: 70.h,
                                height: 70.w,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(87, 158, 158, 158),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.arrow_circle_up_rounded,
                                  size: 50.w,
                                  color: buttonColor,
                                )),
                              ),
                            )
                          ],
                        ),
                        verticalSpaceMedium(),
                        Text(
                          "Vous devez télécharger votre",
                          style: TextStyle(
                            color: kcWhite,
                            fontSize: 14.sp,
                            fontFamily: 'ProductSans',
                          ),
                        ),
                        verticalSpaceSmall(),
                        Text(
                          documentTypeModel.name!,
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ProductSans',
                              color: kcWhite),
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    color: kcWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        verticalSpaceLarge(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100.w,
                              child: const Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            horizontalSpaceSmall(),
                            const Text(
                              "or",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            horizontalSpaceSmall(),
                            SizedBox(
                              width: 100.w,
                              child: const Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        verticalSpaceLarge(),
                        MaterialButton(
                          onPressed: () {
                            model.uploadPDF(
                                documentTypeModel, fromEditPage, selectedCard);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.image_search_outlined,
                                color: backgroundColor,
                                size: 50,
                              ),
                              horizontalSpaceSmall(),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                        "Sélectionner les documents de la galerie.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: 'ProductSans',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        )),
                                    Text(
                                      "PNG, JPEG or PDF",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'ProductSans',
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: MaterialButton(
                      onPressed: () {
                        model.upLoadViaCamera(
                            documentTypeModel, fromEditPage, selectedCard);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: buttonColor,
                      child: SizedBox(
                        height: 60.h,
                        width: 250.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.camera_alt_outlined,
                              size: 30,
                            ),
                            Text(
                              "Utiliser l'appareil photo",
                              style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          )),
      viewModelBuilder: () => FileUploadViewModel(),
    );
  }
}
