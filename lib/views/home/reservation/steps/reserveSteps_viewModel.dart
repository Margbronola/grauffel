import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ReserveStepsViewModel extends BaseViewModel {
  PageController? pageController;
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void init() {
    pageController = PageController();
  }

  void submitEvents(int index) {
    nextPage(index);
  }

  void submitGuns(int index) {
    nextPage(index);
  }

  void skipPage(int index) {
    nextPage(index);
  }

  void nextPage(int index) {
    nextIndex(index);
    pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    notifyListeners();
  }

  void nextIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController!.dispose();
    super.dispose();
  }
}
