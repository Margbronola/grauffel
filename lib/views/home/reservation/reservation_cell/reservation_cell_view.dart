import 'package:egczacademy/views/home/reservation/reservation_cell/reservation_cell_viewModel.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../../../shared/validator.dart';

class ReservationCellView extends StatelessWidget {
  const ReservationCellView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReservationCellViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          centerTitle: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: kcWhite,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Réservation\nd'une alvéolé".toUpperCase(),
                style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          backgroundColor: buttonColor,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          color: kcWhite,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Envie de louer une alvéole pour vous et vos amis pour pratiquer du tir 25m ou du Fun shoot en dehors des heures d’ouverture ?",
                style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500),
              ),
              verticalSpaceLarge(),
              TextFormField(
                maxLines: 3,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: backgroundColor, fontSize: 20.sp),
                focusNode: model.commentFocusNode,
                controller: model.commentTextController,
                validator: (value) {
                  return Validator.validateName(value ?? "");
                },
                decoration: InputDecoration(
                  label: RichText(
                      text: TextSpan(
                          text: 'Exprimez votre demande',
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: model.isCommentFucos
                                  ? Colors.grey
                                  : Colors.black,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w700),
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
                  hintStyle: const TextStyle(color: backgroundColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: backgroundColor),
                  ),
                  isDense: true,
                ),
              ),
              const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 242.w,
                      child: CustomButton(
                          title: "Faire une demande",
                          onTap: model.showModalSuccessReservation)),
                ],
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ReservationCellViewModel(),
    );
  }
}
