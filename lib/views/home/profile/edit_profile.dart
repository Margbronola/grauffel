import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../app/global.dart';
import '../../shared/color.dart';
import '../../shared/customButton.dart';
import '../../shared/ui_helper.dart';
import '../../shared/validator.dart';
import 'edit_profile_viewModel.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditProfileViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        appBar: AppBar(
          backgroundColor: kcWhite,
          iconTheme: const IconThemeData(color: backgroundColor),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: model.formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Image.asset(
                          profileImage,
                          scale: 3,
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
                    style: TextStyle(color: backgroundColor, fontSize: 20.sp),
                    focusNode: model.emailFocusNode,
                    controller: model.emailController,
                    validator: (value) {
                      return Validator.validateEmail(value ?? "");
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Adresse mail*",
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
                    style: const TextStyle(color: kcWhite),
                    focusNode: model.dateNode,
                    controller: model.dateController,
                    validator: (value) {
                      return Validator.validateName(value ?? "");
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      hintText: "Date de naissance",
                      hintStyle: TextStyle(color: Colors.grey),
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
                    style: const TextStyle(color: kcWhite),
                    focusNode: model.phoneNode,
                    controller: model.phoneController,
                    validator: (value) {
                      return Validator.validatePhoneNumber(value ?? "");
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      hintText: "Numéro de téléphone*",
                      hintStyle: TextStyle(color: Colors.grey),
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
                    style: const TextStyle(color: kcWhite),
                    focusNode: model.addressNode,
                    controller: model.addresscontroller,
                    validator: (value) {
                      return Validator.validateName(value ?? "");
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      hintText: "Adresse postale",
                      hintStyle: TextStyle(color: Colors.grey),
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
                    style: const TextStyle(color: kcWhite),
                    focusNode: model.codeNode,
                    controller: model.codeController,
                    validator: (value) {
                      return Validator.validateName(value ?? "");
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      hintText: "Code postale",
                      hintStyle: TextStyle(color: Colors.grey),
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
                    style: const TextStyle(color: kcWhite),
                    focusNode: model.villeNode,
                    controller: model.villeController,
                    validator: (value) {
                      return Validator.validateName(value ?? "");
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      hintText: "Ville",
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      isDense: true,
                    ),
                  ),
                  verticalSpaceMedium(),
                  CustomButton(
                      title: "Enregistrer".toUpperCase(), onTap: model.save),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => EditProfileViewModel(),
    );
  }
}
