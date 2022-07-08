import 'package:bottom_bar/bottom_bar.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../reservation/reservation_view.dart';
import '../shared/ui_helper.dart';
import 'home_viewModel.dart';
import 'profile/profile.dart';
import 'reservation/reservation_list.dart';
import 'settings/settings_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (model) => model.initState(),
      builder: (context, model, child) => Scaffold(
        appBar: model.selectedIndex == 2
            ? null
            : AppBar(
                backgroundColor: backgroundColor,
                title: model.selectedIndex != 0
                    ? null
                    : Text(
                        "Hello ! JOHN",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                leadingWidth: 150.w,
                leading: model.selectedIndex == 0
                    ? null
                    : Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            "assets/images/logo2.png",
                            scale: 12.w,
                          ),
                        ],
                      ),
                actions: [
                  GestureDetector(
                    child: const Icon(Icons.more_vert),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsView()));
                    },
                  ),
                  horizontalSpaceSmall()
                ],
                automaticallyImplyLeading: false,
              ),
        body: PageView(
          controller: model.pageController,
          onPageChanged: model.changePage,
          children: const <Widget>[
            ReservationView(),
            ReservationList(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomBar(
          selectedIndex: model.selectedIndex,
          onTap: model.onTap,
          items: const <BottomBarItem>[
            BottomBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: buttonColor,
            ),
            BottomBarItem(
              icon: Icon(Icons.calendar_month),
              title: Text('Book'),
              activeColor: buttonColor,
            ),
            BottomBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              activeColor: buttonColor,
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
