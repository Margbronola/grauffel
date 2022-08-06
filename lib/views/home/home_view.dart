import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/views/home/profile/profile_view.dart';
import 'package:egczacademy/views/home/reservation/reservation_list.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../reservation/reservation_view.dart';
import '../shared/ui_helper.dart';
import 'home_viewModel.dart';
import 'settings/settings_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (model) => model.initState(),
      builder: (context, model, child) => Scaffold(
        appBar: model.selectedIndex != 0
            ? null
            : AppBar(
                toolbarHeight: 90,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                leadingWidth: 150.w,
                title: Image.asset(
                  imagelBigLogo,
                  width: 162.w,
                  height: 54.h,
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
          children: <Widget>[
            ReservationView(
              gotoProfile: () {
                model.onTap(2);
              },
            ),
            const ReservationList(),
            const ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomBarInspiredInside(
          items: items,
          backgroundColor: backgroundColor,
          color: Colors.white,
          colorSelected: Colors.white,
          indexSelected: model.selectedIndex,
          onTap: model.onTap,
          chipStyle:
              const ChipStyle(convexBridge: true, background: buttonColor),
          itemStyle: ItemStyle.hexagon,
          animated: false,
        ),
        // bottomNavigationBar: BottomBar(
        //   selectedIndex: model.selectedIndex,
        //   onTap: model.onTap,
        //   items: const <BottomBarItem>[
        //     BottomBarItem(
        //       inactiveColor: Colors.black,
        //       icon: Icon(Icons.home),
        //       title: Text('Home'),
        //       activeColor: Colors.red,
        //     ),
        //     BottomBarItem(
        //       icon: Icon(Icons.calendar_month),
        //       title: Text('Book'),
        //       activeColor: buttonColor,
        //     ),
        //     BottomBarItem(
        //       icon: Icon(Icons.person),
        //       title: Text('Profile'),
        //       activeColor: buttonColor,
        //     ),
        //   ],
        // ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    title: '',
  ),
  TabItem(
    icon: Icons.calendar_month,
    title: '',
  ),
  TabItem(
    icon: Icons.person,
    title: '',
  ),
];
