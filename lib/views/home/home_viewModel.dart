import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends ReactiveViewModel {
  final HomePagingService _homePagingService = locator<HomePagingService>();
  int get selectedIndex => _homePagingService.selectedPage;
  PageController get pageController => _homePagingService.pageController!;
  bool get isFromReview => _homePagingService.isFromReview;

  void initState() {
    _homePagingService.setController(PageController());
  }

  void changePage(int index) {
    _homePagingService.setPage(index);
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _homePagingService.pageController!.dispose();
    super.dispose();
  }

  void onTap(int index, {bool isFromReview = false}) {
    _homePagingService.onTap(index, isFromReview: isFromReview);
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_homePagingService];
}
