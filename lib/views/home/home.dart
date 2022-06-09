import 'package:egczacademy/views/reservation/reservation_view.dart';
import 'package:flutter/material.dart';

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
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: <Widget>[
          ReservationView(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
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
