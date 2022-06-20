import 'package:egczacademy/views/home/profile/profile.dart';
import 'package:egczacademy/views/home/reservation/reservation_list.dart';
import 'package:egczacademy/views/home/settings/settings_view.dart';
import 'package:egczacademy/views/reservation/reservation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/ui_helper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  void onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController!.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedIndex != 0
            ? null
            : Text(
                "Hello ! JOHN",
                style: TextStyle(fontSize: 20.sp),
              ),
        leadingWidth: 150.w,
        leading: _selectedIndex == 0
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
            child: Icon(Icons.more_vert),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsView()));
            },
          ),
          horizontalSpaceSmall()
        ],
        automaticallyImplyLeading: false,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: <Widget>[
          ReservationView(),
          ReservationList(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "", icon: Icon(Icons.calendar_month)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.person))
          ]),
    );
  }
}
