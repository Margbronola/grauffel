import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/views/home/profile/document_card_view.dart';
import 'package:egczacademy/views/shared/custom_button.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';

import '../../../shared/color.dart';
import 'document_upload_view_model.dart';

class DocumentUploadView extends StatelessWidget {
  final DocumentTypeModel documentTypeModel;
  final bool isEmpty;
  const DocumentUploadView({
    Key? key,
    required this.documentTypeModel,
    this.isEmpty = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DocumentUploadViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        appBar: AppBar(
          backgroundColor: kcWhite,
          iconTheme: const IconThemeData(color: backgroundColor),
          elevation: 0,
        ),
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Demande de\nremplacement".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                        fontFamily: 'ProductSans',
                      ),
                    ),
                    verticalSpaceMedium(),
                    Image.asset(
                      "assets/images/logotransparent.png",
                      width: 132.w,
                      height: 44.h,
                    ),
                    verticalSpaceMedium(),
                    isEmpty
                        ? const SizedBox()
                        : Container(
                            height: 54.h,
                            width: double.infinity,
                            color: backgroundColor,
                            child: Center(
                              child: Text(
                                "Actuellement".toUpperCase(),
                                style: TextStyle(
                                    color: kcWhite,
                                    fontSize: 15.sp,
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                    isEmpty ? const SizedBox() : verticalSpaceMedium(),
                    isEmpty
                        ? const SizedBox()
                        : Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: DocumentCardView(
                              removeIcon: true,
                              onTap: () {},
                              cardColor: greyLight3,
                              documentTypeModel: documentTypeModel,
                            ),
                          ),
                    verticalSpaceMedium(),
                    Container(
                      height: 54.h,
                      width: double.infinity,
                      color: backgroundColor,
                      child: Center(
                        child: Text(
                          "Nouveau".toUpperCase(),
                          style: TextStyle(
                              color: kcWhite,
                              fontFamily: 'ProductSans',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    verticalSpaceMedium(),
                    GestureDetector(
                      onTap: () {
                        model.uploadDocument(
                            documentTypeModel: documentTypeModel);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SizedBox(
                          width: size(context).width,
                          child: Card(
                            color: kcWhite,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ListTile(
                                title: Row(
                                  children: [
                                    const Text("Front"),
                                    horizontalSpaceSmall(),
                                    const Icon(
                                      Icons.info,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                subtitle: Text(
                                    "Fichier : ${model.fileFront ?? "aucun fichier choisi..."}",
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'ProductSans',
                                      fontSize: 18.sp,
                                    ),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    documentTypeModel.type != 1
                        ? const SizedBox()
                        : GestureDetector(
                            onTap: () {
                              model.uploadDocument2(
                                  documentTypeModel: documentTypeModel);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: SizedBox(
                                width: size(context).width,
                                child: Card(
                                  color: kcWhite,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ListTile(
                                      title: Row(
                                        children: [
                                          const Text("Back"),
                                          horizontalSpaceSmall(),
                                          const Icon(
                                            Icons.info,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                      subtitle: Text(
                                          "Fichier : ${model.fileBack ?? "aucun fichier choisi..."}",
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'ProductSans',
                                            fontSize: 18.sp,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                    verticalSpaceLarge(),
                    SizedBox(
                        width: 255.w,
                        child: CustomButton(
                            title: "Valider la demande",
                            textColor: kcWhite,
                            onTap: documentTypeModel.type == 1
                                ? model.fileFront != null &&
                                        model.fileBack != null
                                    ? () {
                                        model.uploadDoc(
                                            documentType: documentTypeModel,
                                            fileFront: model.fileFront,
                                            fileBack: model.fileBack);
                                      }
                                    : null
                                : model.fileFront != null
                                    ? () {
                                        model.uploadDoc(
                                            documentType: documentTypeModel,
                                            fileFront: model.fileFront,
                                            fileBack: model.fileBack);
                                      }
                                    : null))
                  ],
                ),
              ),
      ),
      viewModelBuilder: () => DocumentUploadViewModel(),
    );
  }
}
