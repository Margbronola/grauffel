import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../../../../app/global.dart';
import '../../../shared/color.dart';
import '../../../shared/custom_button.dart';
import '../../../shared/ui_helper.dart';
import '../../../shared/validator.dart';
import 'information_edit_view_model.dart';

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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 190.w,
                                width: 190.w,
                                child: Center(
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: 150.w,
                                        width: 150.w,
                                        child: model.user!.image != null
                                            ? model.image != null
                                                ? Image.asset(
                                                    model.image!.path,
                                                    fit: BoxFit.fitWidth,
                                                    scale: 5,
                                                  )
                                                : Image.network(
                                                    "$urlServer/${model.user!.image!.path}${model.user!.image!.filename}",
                                                    fit: BoxFit.fitWidth,
                                                  )
                                            : Image.asset(
                                                profileImage,
                                              ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        bottom: 0,
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: IconButton(
                                              onPressed: model.pickInGallary,
                                              icon: const Icon(
                                                Icons.camera,
                                                color: buttonColor,
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.02),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                    color: backgroundColor,
                                    fontSize: 15.sp,
                                    fontFamily: 'ProductSans',
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.bold),
                                focusNode: model.emailFocusNode,
                                controller: model.emailController,
                                validator: (value) {
                                  return Validator.validateEmail(value ?? "");
                                },
                                decoration: InputDecoration(
                                  label: RichText(
                                      text: TextSpan(
                                          text: 'Adresse mail',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              color: model.isEmailFucos
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize: 12.sp,
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          children: const [
                                        TextSpan(
                                            text: ' *',
                                            style: TextStyle(
                                              color: buttonColor,
                                            ))
                                      ])),
                                  fillColor: Colors.black,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: backgroundColor),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: backgroundColor),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.02),
                              TextFormField(
                                readOnly: true,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor,
                                    fontSize: 15.sp,
                                    fontFamily: 'ProductSans',
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.bold),
                                focusNode: model.dateNode,
                                controller: model.birthdayController,
                                onTap: () {
                                  model.showDatePicker(context);
                                },
                                decoration: InputDecoration(
                                  label: RichText(
                                      text: TextSpan(
                                          text: 'Date de naissance',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              color: model.isEmailFucos
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize: 12.sp,
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          children: const [])),
                                  fillColor: Colors.black,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: backgroundColor),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: backgroundColor),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.02),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    color: backgroundColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                                focusNode: model.phoneNode,
                                controller: model.phoneController,
                                decoration: InputDecoration(
                                  label: RichText(
                                      text: TextSpan(
                                          text: 'Numéro de téléphone',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 12.sp,
                                              color: model.isNumberFucos
                                                  ? Colors.black
                                                  : Colors.grey,
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          children: const [
                                        TextSpan(
                                            text: ' *',
                                            style: TextStyle(
                                              color: buttonColor,
                                            ))
                                      ])),
                                  fillColor: Colors.black,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: backgroundColor),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: backgroundColor),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.02),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor,
                                    fontSize: 15.sp,
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.bold),
                                focusNode: model.addressNode,
                                controller: model.addresscontroller,
                                decoration: InputDecoration(
                                  label: RichText(
                                      text: TextSpan(
                                          text: 'Adresse postale',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 12.sp,
                                              color: model.isAddressFucos
                                                  ? Colors.black
                                                  : Colors.grey,
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          children: const [])),
                                  fillColor: Colors.black,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: backgroundColor),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: backgroundColor),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.02),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor,
                                    fontSize: 15.sp,
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.bold),
                                focusNode: model.codeNode,
                                controller: model.codeController,
                                decoration: InputDecoration(
                                  label: RichText(
                                      text: TextSpan(
                                          text: 'Code postale',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 12.sp,
                                              color: model.isPostalFucos
                                                  ? Colors.black
                                                  : Colors.grey,
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          children: const [])),
                                  fillColor: Colors.black,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: backgroundColor),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: backgroundColor),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size(context).height * 0.02),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    color: backgroundColor,
                                    fontSize: 15.sp,
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.bold),
                                focusNode: model.villeNode,
                                controller: model.villeController,
                                decoration: InputDecoration(
                                  label: RichText(
                                      text: TextSpan(
                                          text: 'Ville',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 12.sp,
                                              color: model.isVilleFucos
                                                  ? Colors.black
                                                  : Colors.grey,
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          children: const [])),
                                  fillColor: Colors.black,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: backgroundColor),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: backgroundColor),
                                  ),
                                  isDense: true,
                                ),
                              ),
                              verticalSpaceMedium(),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.all(20.h),
                                  child: SizedBox(
                                    height: 60.h,
                                    width: 220.w,
                                    child: CustomButton(
                                        title: "Enregistrer".toUpperCase(),
                                        onTap: model.save),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
