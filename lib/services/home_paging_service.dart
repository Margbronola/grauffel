import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomePagingService with ReactiveServiceMixin {
  HomePagingService() {
    listenToReactiveValues(
        [_selectedPage, _pageController, _isFromReview, _refresh]);
  }

  final ReactiveValue<bool> _isFromReview = ReactiveValue<bool>(false);

  final ReactiveValue<bool> _refresh = ReactiveValue<bool>(true);

  final ReactiveValue<int> _selectedPage = ReactiveValue<int>(0);
  final ReactiveValue<PageController?> _pageController =
      ReactiveValue<PageController?>(null);

  bool get isFromReview => _isFromReview.value;

  bool get isRefresh => _refresh.value;
  int get selectedPage => _selectedPage.value;

  PageController? get pageController => _pageController.value;

  setPage(int index) {
    _selectedPage.value = index;
  }

  setController(var controller) {
    _pageController.value = controller;
  }

  void onTap(int index, {bool isFromReview = false}) {
    _isFromReview.value = isFromReview;
    notifyListeners();
    pageController!
        .animateToPage(index,
            duration: const Duration(milliseconds: 500), curve: Curves.ease)
        .whenComplete(() => setPage(index));
    notifyListeners();
  }

  void setRefresh(bool value) {
    _refresh.value = value;
  }
}
