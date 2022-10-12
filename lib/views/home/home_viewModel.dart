import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/local_notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../services/user_api_service.dart';
import '../../services/user_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final HomePagingService _homePagingService = locator<HomePagingService>();
  int get selectedIndex => _homePagingService.selectedPage;
  PageController get pageController => _homePagingService.pageController!;
  bool get isFromReview => _homePagingService.isFromReview;

  final UserAPIService _userAPIService = locator<UserAPIService>(); //
  final UserService userService = locator<UserService>(); //

  Future<void> backgroundHandler(RemoteMessage message) async {
    //TODO: redirect in docs page
  }

  void initState(context) async {
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
    FirebaseMessaging.instance.getInitialMessage();
    LocalNotificationService.requestPermissions(
      _userAPIService,
      userService.token!,
    );
    _homePagingService.setController(PageController());

    String? token = await FirebaseMessaging.instance.getToken();
    print("Message token: ${token!}");

    //FOREGRUOUND
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.initialize();

      LocalNotificationService.display(message);
    });

    //BACK
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      print("OPENEd");
      if (event.notification != null) {
        print("ROUTE HERE");
        final routeMessage = event.data["route"];

        if (routeMessage == "red") {
          print("RED ROUTE");
        } else {
          print("NOTE RED ROUTE");
        }
        print(routeMessage);
      }
    });
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
