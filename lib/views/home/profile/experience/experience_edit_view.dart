import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../shared/color.dart';
import '../../../shared/customButton.dart';
import '../../../shared/ui_helper.dart';
import '../../../shared/validator.dart';
import 'experienve_edit_viewModel.dart';

class ExperienceEditView extends StatelessWidget {
  const ExperienceEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExperienceEditViewModel>.reactive(
      onModelReady: (model) => model.init(),
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
                // color: kcWhite,
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
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                maxLines: 15,
                                style: TextStyle(
                                    color: backgroundColor, fontSize: 20.sp),
                                focusNode: model.experienceNode,
                                controller: model.experienceController,
                                validator: (value) {
                                  return Validator.validateName(value ?? "");
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: buttonColor),
                                  ),
                                  labelText: "Expériences",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
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
                        padding: EdgeInsets.all(20.h),
                        child: CustomButton(
                            title: "Enregistrer".toUpperCase(),
                            onTap: model.save),
                      ),
                    ),
                  ],
                ),
              ),
      ),
      viewModelBuilder: () => ExperienceEditViewModel(),
    );
  }
}
