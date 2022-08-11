import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int selectedIndex = 0;
  PageController? pageController;
  bool _isFromReview = false;

  bool get isFromReview => _isFromReview;

  void initState() {
    pageController = PageController();
  }

  void changePage(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController!.dispose();
    super.dispose();
  }

  void onTap(int index, {bool isFromReview = false}) {
    _isFromReview = isFromReview;
    notifyListeners();
    pageController!
        .animateToPage(index,
            duration: const Duration(milliseconds: 500), curve: Curves.ease)
        .whenComplete(() => selectedIndex = index);
    notifyListeners();
  }
}
