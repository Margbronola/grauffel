import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ReserveStepsViewModel extends BaseViewModel {
  PageController? pageController;
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void init() {
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController!.dispose();
    super.dispose();
  }

  void nextIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void nextPage(int index) {
    nextIndex(index);
    pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    notifyListeners();
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
}
