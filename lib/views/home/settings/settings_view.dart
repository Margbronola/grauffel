import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../shared/color.dart';
import '../../shared/widget/header/header.dart';
import 'settings_view_model.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhite,
        body: Column(
          children: [
            const Header(
              title: "Paramètres",
              showLeading: true,
            ),
            Stack(
              children: [
                Container(
                    color: kcWhite,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        MaterialButton(
                          onPressed: model.goToNotificationSettings,
                          child: settingTile("Notifications"),
                        ),
                        MaterialButton(
                          onPressed: model.showChangeDialog,
                          child: settingTile("Sécurité"),
                        ),
                        MaterialButton(
                          onPressed: model.launchUrlTerm,
                          child:
                              settingTile("Conditions générales d'utilisation"),
                        ),
                        MaterialButton(
                          onPressed: model.deleteAccount,
                          child: settingTile("Supprimer mon compte"),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
      viewModelBuilder: () => SettingsViewModel(),
    );
  }

  Widget settingTile(String title) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 15,
          ),
          horizontalSpaceMedium(),
          Text(
            title.toUpperCase(),
            style: ThemeData()
                .textTheme
                .headlineSmall!
                .copyWith(fontFamily: 'ProductSans', fontSize: 15.sp),
          ),
        ],
      );
}
