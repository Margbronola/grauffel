import 'package:egczacademy/views/shared/customLoader.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/color.dart';
import '../../shared/widget/header/header.dart';
import 'settings_viewModel.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: [
            const Header(
              title: "Paramètres",
              showLeading: true,
            ),
            Expanded(
              child: Stack(
                children: [
                  Expanded(
                    child: Container(
                        color: kcWhite,
                        padding: const EdgeInsets.all(20),
                        child: Expanded(
                          child: Column(
                            children: [
                              // Container(
                              //   width: double.infinity,
                              //   decoration: BoxDecoration(
                              //       color: greyLight,
                              //       borderRadius: BorderRadius.circular(5)),
                              //   child: SearchField<Country>(
                              //     itemHeight: 30,
                              //     marginColor: Colors.transparent,
                              //     suggestionsDecoration: BoxDecoration(
                              //         color: Colors.white10.withOpacity(0.9)),
                              //     searchInputDecoration: const InputDecoration(
                              //       prefixIcon: Icon(Icons.search),
                              //       focusedBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Colors.transparent,
                              //         ),
                              //       ),
                              //       border: OutlineInputBorder(
                              //         borderSide: BorderSide(color: Colors.red),
                              //       ),
                              //     ),
                              //     suggestions: model.countries
                              //         .map(
                              //           (e) => SearchFieldListItem<Country>(
                              //             e.name,
                              //             item: e,
                              //           ),
                              //         )
                              //         .toList(),
                              //   ),
                              // ),
                              MaterialButton(
                                onPressed: model.goToNotificationSettings,
                                child:
                                    settingTile("transaction", "Notification"),
                              ),
                              MaterialButton(
                                onPressed: model.goToHistory,
                                child: settingTile(
                                    "transaction", "History/Transactions"),
                              ),
                              MaterialButton(
                                onPressed: model.showChangeDialog,
                                child: settingTile("lock", "Update Password"),
                              ),
                              MaterialButton(
                                onPressed: model.showToken,
                                child: settingTile(
                                  "helpcircle",
                                  "About",
                                ),
                              ),
                              MaterialButton(
                                onPressed: model.signOut,
                                child: settingTile("signout", "SignOut"),
                              )
                            ],
                          ),
                        )),
                  ),
                  model.isBusy
                      ? const CustomLoader(
                          withBackground: false,
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => SettingsViewModel(),
    );
  }

  Widget settingTile(String asset, String title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image.asset(
          //   "assets/images/$asset.png",
          //   height: 21.h,
          //   width: 19.w,
          // ),

          Text(
            title,
            style: ThemeData().textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 15,
          ),
        ],
      );
}
