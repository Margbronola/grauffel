import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';
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
          body: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  toolbarHeight: size(context).height / 4,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      children: [
                        Container(
                          color: Colors.black,
                          width: double.infinity,
                          child: model.user!.image != null
                              ? model.image != null
                                  ? Image.asset(
                                      model.image!.path,
                                      fit: BoxFit.fitHeight,
                                      scale: 5,
                                    )
                                  : CachedNetworkImage(
                                      imageUrl:
                                          "$urlServer/${model.user!.image!.path}${model.user!.image!.filename}",
                                      placeholder: (context, url) =>
                                          const Center(
                                              child: CircularProgressIndicator
                                                  .adaptive()),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    )
                              : Image.asset(
                                  profileImage,
                                ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BackButton(),
                            IconButton(
                                onPressed: model.pickInGallary,
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: buttonColor,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: model.isBusy
                ? const Center(
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.black,
                      ),
                      backgroundColor: Colors.grey,
                    ),
                  )
                : SizedBox(
                    height: size(context).height,
                    width: size(context).width,
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Form(
                            key: model.formKey,
                            child: GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  verticalSpaceSmall(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          textInputAction: TextInputAction.done,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          style: TextStyle(
                                              color: backgroundColor,
                                              fontSize: 15.sp,
                                              fontFamily: 'ProductSans',
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          focusNode: model.emailFocusNode,
                                          controller: model.emailController,
                                          validator: (value) {
                                            return Validator.validateEmail(
                                                value ?? "");
                                          },
                                          decoration: InputDecoration(
                                            label: RichText(
                                                text: TextSpan(
                                                    text: 'Adresse mail',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'ProductSans',
                                                        color:
                                                            model.isEmailFucos
                                                                ? Colors.black
                                                                : Colors.grey,
                                                        fontSize: 12.sp,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [
                                                  TextSpan(
                                                      text: ' *',
                                                      style: TextStyle(
                                                        color: buttonColor,
                                                      ))
                                                ])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          textInputAction: TextInputAction.done,
                                          keyboardType: TextInputType.name,
                                          style: TextStyle(
                                              color: backgroundColor,
                                              fontSize: 15.sp,
                                              fontFamily: 'ProductSans',
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          focusNode: model.firstNameNode,
                                          controller: model.firstNameController,
                                          validator: (value) {
                                            return Validator.validateName(
                                                value ?? "");
                                          },
                                          decoration: InputDecoration(
                                            label: RichText(
                                                text: TextSpan(
                                                    text: 'Prénom',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'ProductSans',
                                                        color: model
                                                                .isfirstNameFucos
                                                            ? Colors.black
                                                            : Colors.grey,
                                                        fontSize: 12.sp,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [
                                                  TextSpan(
                                                      text: ' *',
                                                      style: TextStyle(
                                                        color: buttonColor,
                                                      ))
                                                ])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          textInputAction: TextInputAction.done,
                                          keyboardType: TextInputType.name,
                                          style: TextStyle(
                                              color: backgroundColor,
                                              fontSize: 15.sp,
                                              fontFamily: 'ProductSans',
                                              letterSpacing: 1.3,
                                              fontWeight: FontWeight.bold),
                                          focusNode: model.lastNameNode,
                                          controller: model.lastNameController,
                                          validator: (value) {
                                            return Validator.validateName(
                                                value ?? "");
                                          },
                                          decoration: InputDecoration(
                                            label: RichText(
                                                text: TextSpan(
                                                    text: 'Nom de famille',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'ProductSans',
                                                        color: model
                                                                .islastNameFucos
                                                            ? Colors.black
                                                            : Colors.grey,
                                                        fontSize: 12.sp,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [
                                                  TextSpan(
                                                      text: ' *',
                                                      style: TextStyle(
                                                        color: buttonColor,
                                                      ))
                                                ])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          readOnly: true,
                                          // textInputAction: TextInputAction.done,
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
                                            model.showDatePicker2(context);
                                          },
                                          decoration: InputDecoration(
                                            label: RichText(
                                                text: TextSpan(
                                                    text: 'Date de naissance',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'ProductSans',
                                                        color: model.isDateFucos
                                                            ? Colors.black
                                                            : Colors.grey,
                                                        fontSize: 12.sp,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          textInputAction: TextInputAction.done,
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
                                                        fontFamily:
                                                            'ProductSans',
                                                        fontSize: 12.sp,
                                                        color:
                                                            model.isNumberFucos
                                                                ? Colors.black
                                                                : Colors.grey,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [
                                                  TextSpan(
                                                      text: ' *',
                                                      style: TextStyle(
                                                        color: buttonColor,
                                                      ))
                                                ])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          textInputAction: TextInputAction.done,
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
                                                    text: 'Adresse',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'ProductSans',
                                                        fontSize: 12.sp,
                                                        color:
                                                            model.isAddressFucos
                                                                ? Colors.black
                                                                : Colors.grey,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          textInputAction: TextInputAction.done,
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
                                                    text: 'Code postal',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'ProductSans',
                                                        fontSize: 12.sp,
                                                        color:
                                                            model.isPostalFucos
                                                                ? Colors.black
                                                                : Colors.grey,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          textInputAction: TextInputAction.done,
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
                                                        fontFamily:
                                                            'ProductSans',
                                                        fontSize: 12.sp,
                                                        color:
                                                            model.isVilleFucos
                                                                ? Colors.black
                                                                : Colors.grey,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
                                            ),
                                            isDense: true,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.02),
                                        TextFormField(
                                          readOnly: true,
                                          textInputAction: TextInputAction.done,
                                          keyboardType: TextInputType.text,
                                          onTap: () {
                                            print("tap");

                                            Picker(
                                                    adapter: PickerDataAdapter<
                                                            String>(
                                                        pickerdata: model
                                                            .countries!
                                                            .map((e) => e.name)
                                                            .toList()),
                                                    changeToFirst: true,
                                                    hideHeader: false,
                                                    onConfirm:
                                                        (Picker picker,
                                                            List value) {
                                                      print(value);
                                                      model.countrySelect(
                                                          value[0]);
                                                    })
                                                .showModal(
                                                    context); //_scaffoldKey.currentState);
                                          },
                                          style: TextStyle(
                                              color: backgroundColor,
                                              fontSize: 15.sp,
                                              fontFamily: 'ProductSans',
                                              fontWeight: FontWeight.bold),
                                          focusNode: model.countryNode,
                                          controller: model.countryController,
                                          decoration: InputDecoration(
                                            label: RichText(
                                                text: TextSpan(
                                                    text: 'Pays',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'ProductSans',
                                                        fontSize: 12.sp,
                                                        color:
                                                            model.iscountryFucos
                                                                ? Colors.black
                                                                : Colors.grey,
                                                        letterSpacing: 1.3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: const [])),
                                            fillColor: Colors.black,
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            hintStyle: const TextStyle(
                                                color: backgroundColor),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: backgroundColor),
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
                                                  title: "Enregistrer"
                                                      .toUpperCase(),
                                                  onTap: model.save),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          )),
      viewModelBuilder: () => InformationEditViewModel(),
    );
  }
}
