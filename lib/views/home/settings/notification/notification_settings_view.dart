import 'package:egczacademy/views/shared/color.dart';
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
          color: kcWhite,
          child: Column(
            children: [
              Card(
                color: kcWhite,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Text("Autoriser les notifications push")),
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
                ),
              ),
              verticalSpaceMedium(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Text(
                          "Recevoir une notification pour me \nrappeler une réservation 1h avant "),
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
              ),
              verticalSpaceSmall(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: Text(
                            "Recevoir une notification en cas\nd'annulation")),
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
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => NotificationSettingsViewModel(),
    );
  }
}
