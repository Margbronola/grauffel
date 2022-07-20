import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../../../../app/global.dart';
import '../../../shared/color.dart';
import '../../../shared/customButton.dart';
import '../../../shared/ui_helper.dart';
import '../../../shared/validator.dart';
import 'information_edit_viewModel.dart';

class InformationEditView extends StatelessWidget {
  const InformationEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InformationEditViewModel>.reactive(
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
                              SizedBox(
                                width: 120.w,
                                child: Stack(
                                  children: [
                                    model.user!.image != null
                                        ? model.image != null
                                            ? Image.asset(
                                                model.image!.path,
                                                scale: 5,
                                              )
                                            : Image.network(
                                                "$urlServer/${model.user!.image!.path}${model.user!.image!.filename}",
                                                fit: BoxFit.cover,
                                                scale: 5,
                                              )
                                        : Image.asset(
                                            profileImage,
                                            scale: 5,
                                          ),
                                    Positioned(
                                      bottom: -5,
                                      right: -5,
                                      child: IconButton(
                                          onPressed: model.pickInGallary,
                                          icon: const Icon(Icons.camera)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.03),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                    color: backgroundColor, fontSize: 20.sp),
                                focusNode: model.emailFocusNode,
                                controller: model.emailController,
                                validator: (value) {
                                  return Validator.validateEmail(value ?? "");
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: buttonColor),
                                  ),
                                  labelText: "Adresse mail*",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  alignLabelWithHint: true,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.03),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor, fontSize: 20.sp),
                                focusNode: model.dateNode,
                                controller: model.dateController,
                                validator: (value) {
                                  return Validator.validateName(value ?? "");
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: buttonColor),
                                  ),
                                  labelText: "Date de naissance",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.03),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor, fontSize: 20.sp),
                                focusNode: model.phoneNode,
                                controller: model.phoneController,
                                validator: (value) {
                                  return Validator.validatePhoneNumber(
                                      value ?? "");
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: buttonColor),
                                  ),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  labelText: "Numéro de téléphone*",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.03),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor, fontSize: 20.sp),
                                focusNode: model.addressNode,
                                controller: model.addresscontroller,
                                validator: (value) {
                                  return Validator.validateName(value ?? "");
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: buttonColor),
                                  ),
                                  labelText: "Adresse postale",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.03),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor, fontSize: 20.sp),
                                focusNode: model.villeNode,
                                controller: model.villeController,
                                validator: (value) {
                                  return Validator.validateName(value ?? "");
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: buttonColor),
                                  ),
                                  labelText: "Ville",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  isDense: true,
                                ),
                              ),
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
      viewModelBuilder: () => InformationEditViewModel(),
    );
  }
}
