import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/views/home/profile/document_card_view.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../color.dart';
import '../../customButton.dart';

class UploadDialog extends StatelessWidget {
  final DialogRequest<DocumentTypeModel?>? request;
  final Function(DialogResponse)? completer;
  const UploadDialog({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kcWhite, borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 200.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              verticalSpaceSmall(),
              DocumentCardView(
                onTap: () {},
                documentTypeModel: request!.data!,
                bgColor: kcWhite,
                cardColor: greyLight3,
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          completer!(DialogResponse(confirmed: false));
                        },
                        child: const Text(
                          "Annuler",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    horizontalSpaceSmall(),
                    SizedBox(
                      width: 170.w,
                      child: CustomButton(
                          title: "Télécharger",
                          onTap: () {
                            completer!(DialogResponse(confirmed: true));
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
