import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/app/components/enum.dart';

import '../../../shared/color.dart';
import '../../../shared/custom_button.dart';
import '../../../shared/ui_helper.dart';
import '../../../shared/validator.dart';
import 'experienve_edit_view_model.dart';

class ExperienceEditView extends StatelessWidget {
  final ExtraDetails extraDetails;
  const ExperienceEditView({
    Key? key,
    required this.extraDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExperienceEditViewModel>.reactive(
      onModelReady: (model) => model.init(extraDetails),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        appBar: AppBar(
          backgroundColor: kcWhite,
          iconTheme: const IconThemeData(color: backgroundColor),
          elevation: 0,
        ),
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black,
                  ),
                  backgroundColor: Colors.grey,
                ),
              )
            : GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SizedBox(
                  height: size(context).height,
                  width: size(context).width,
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Form(
                          key: model.formKey,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextFormField(
                                  textInputAction: TextInputAction.unspecified,
                                  keyboardType: TextInputType.text,
                                  maxLines: 15,
                                  minLines: 1,
                                  style: TextStyle(
                                      color: backgroundColor, fontSize: 20.sp),
                                  focusNode: model.textNode,
                                  controller: model.textController,
                                  validator: (value) {
                                    if (value != null) {
                                      return Validator.validateName(value);
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: buttonColor),
                                    ),
                                    labelText:
                                        extraDetails == ExtraDetails.experience
                                            ? "Expériences"
                                            : "Equipements",
                                    labelStyle:
                                        const TextStyle(color: Colors.grey),
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    isDense: true,
                                  ),
                                ),
                                SizedBox(height: size(context).height * 0.03),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: SizedBox(
                            height: 60.h,
                            width: 220.w,
                            child: CustomButton(
                                title: "Enregistrer".toUpperCase(),
                                onTap: () {
                                  model.save(extraDetails);
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
      viewModelBuilder: () => ExperienceEditViewModel(),
    );
  }
}
