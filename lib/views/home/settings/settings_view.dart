import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:searchfield/searchfield.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewModel.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("SETTINGS"),
        ),
        body: Container(
            color: kcWhite,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: greyLight, borderRadius: BorderRadius.circular(5)),
                  child: SearchField<Country>(
                    marginColor: Colors.transparent,
                    suggestionsDecoration:
                        BoxDecoration(color: Colors.white10.withOpacity(0.9)),
                    searchInputDecoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    suggestions: model.countries
                        .map(
                          (e) => SearchFieldListItem<Country>(
                            e.name,
                            item: e,
                          ),
                        )
                        .toList(),
                  ),
                ),
                settingTile("user", "Account"),
                settingTile("bell", "Notification"),
                settingTile("eye", "Appearance"),
                settingTile("lock", "Privacy & Security"),
                settingTile("headphone", "Help and Support"),
                MaterialButton(
                  color: Colors.red,
                  onPressed: model.showToken,
                  child: settingTile(
                    "helpcircle",
                    "About",
                  ),
                ),
                MaterialButton(
                  color: Colors.red,
                  onPressed: model.signOut,
                  child: settingTile("signout", "SignOut"),
                )
              ],
            )),
      ),
      viewModelBuilder: () => SettingsViewModel(),
    );
  }

  Widget settingTile(String asset, String title) => Padding(
        padding: const EdgeInsets.all(17),
        child: Row(
          children: [
            Image.asset(
              "assets/images/$asset.png",
              height: 21.h,
              width: 19.w,
            ),
            horizontalSpaceMedium(),
            Text(
              title,
              style: ThemeData().textTheme.headlineSmall!.copyWith(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
      );
}
