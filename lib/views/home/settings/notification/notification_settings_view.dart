import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stacked/stacked.dart';
import '../../../shared/ui_helper.dart';
import 'notification_settings_viewModel.dart';

class NotificationSettingsView extends StatelessWidget {
  const NotificationSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationSettingsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: backgroundColor),
          backgroundColor: kcWhite,
          elevation: 0,
        ),
        body: Container(
          height: size(context).height,
          width: size(context).width,
          color: kcWhite,
          child: Column(
            children: [
              Card(
                color: kcWhite,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                        "Autoriser les notifications push",
                        style: TextStyle(
                            fontFamily: 'ProductSans', fontSize: 15.sp),
                      )),
                      GFToggle(
                        onChanged: model.toggleNotificationOnn,
                        value: model.notificationOnn,
                        // enabledThumbColor: buttonColor,
                        enabledTrackColor: buttonColor,
                        enabledText: "",
                        disabledText: "",
                        boxShape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(0),
                        type: GFToggleType.custom,
                      ),
                    ],
                  ),
                ),
              ),
              !model.notificationOnn
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpaceMedium(),
                          Text(
                            "Toutes les notification sont inactives.\nActive-les grâce au bouton.",
                            style: TextStyle(
                                fontFamily: 'ProductSans', fontSize: 15.sp),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        children: [
                          verticalSpaceMedium(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  "Recevoir une notification pour me \nrappeler une réservation 1h avant ",
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 15.sp),
                                ),
                              ),
                              GFToggle(
                                onChanged: (x) {},
                                value: true,
                                // enabledThumbColor: buttonColor,
                                enabledTrackColor: buttonColor,
                                enabledText: "",
                                disabledText: "",
                                boxShape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(0),
                                type: GFToggleType.custom,
                              ),
                            ],
                          ),
                          verticalSpaceMedium(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text(
                                "Recevoir une notification en cas\nd'annulation",
                                style: TextStyle(
                                    fontFamily: 'ProductSans', fontSize: 15.sp),
                              )),
                              GFToggle(
                                onChanged: (x) {},
                                value: true,
                                // enabledThumbColor: buttonColor,
                                enabledTrackColor: buttonColor,
                                enabledText: "",
                                disabledText: "",
                                boxShape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(0),
                                type: GFToggleType.custom,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
              const Expanded(child: SizedBox()),
              CustomButton(
                  title: "enregistrer",
                  onTap: () {
                    Navigator.pop(context);
                  }),
              verticalSpaceLarge()
            ],
          ),
        ),
      ),
      viewModelBuilder: () => NotificationSettingsViewModel(),
    );
  }
}
