import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/views/home/profile/document_card_view.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';

import '../../../shared/color.dart';
import 'document_upload_viewModel.dart';

class DocumentUploadView extends StatelessWidget {
  final DocumentTypeModel documentTypeModel;
  const DocumentUploadView({
    Key? key,
    required this.documentTypeModel,
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
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Demande de\nremplacement".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
              ),
              verticalSpaceMedium(),
              Image.asset(
                "assets/images/logotransparent.png",
                width: 132.w,
                height: 44.h,
              ),
              verticalSpaceMedium(),
              Container(
                height: 54.h,
                width: double.infinity,
                color: backgroundColor,
                child: Center(
                  child: Text(
                    "Actuellement".toUpperCase(),
                    style: TextStyle(
                        color: kcWhite,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              verticalSpaceMedium(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: DocumentCardView(
                  onTap: () {},
                  bgColor: kcWhite,
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
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              verticalSpaceMedium(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: DocumentCardView(
                  onTap: () {},
                  bgColor: kcWhite,
                  documentTypeModel: documentTypeModel,
                ),
              ),
              MaterialButton(
                textColor: backgroundColor,
                onPressed: () {
                  model.upLoadViaCamera(documentTypeModel);
                },
                child: const Text(
                  "Upload as Photo",
                ),
              ),
              MaterialButton(
                onPressed: () {},
                textColor: backgroundColor,
                child: const Text("Upload as PDF"),
              ),
              verticalSpaceMedium(),
              SizedBox(
                  width: 255.w,
                  child:
                      CustomButton(title: "Valider la demande", onTap: () {}))
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DocumentUploadViewModel(),
    );
  }
}
