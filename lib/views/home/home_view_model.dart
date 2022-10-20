import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/local_notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../services/user_api_service.dart';
import '../../services/user_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final HomePagingService _homePagingService = locator<HomePagingService>();
  final BookingService _bookingService = locator<BookingService>();
  int get selectedIndex => _homePagingService.selectedPage;
  PageController get pageController => _homePagingService.pageController!;
  bool get isFromReview => _homePagingService.isFromReview;

  final UserAPIService _userAPIService = locator<UserAPIService>(); //
  final UserService userService = locator<UserService>(); //

  bool get isProfilePage => _homePagingService.isProfileView;

  Future<void> backgroundHandler(RemoteMessage message) async {
    //TODO: redirect in docs page
  }

  void initState(context) async {
    _homePagingService.setPage(0);
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
    FirebaseMessaging.instance.getInitialMessage();
    LocalNotificationService.requestPermissions(
      _userAPIService,
      userService.token!,
    );
    _homePagingService.setController(PageController());

    String? token = await FirebaseMessaging.instance.getToken();
    debugPrint("Message token: ${token!}");

    //FOREGRUOUND
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.initialize();
      LocalNotificationService.display(message);
    });

    //BACK
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      debugPrint("OPENEd");
      if (event.notification != null) {
        debugPrint("ROUTE HERE");
        final routeMessage = event.data["route"];

        if (routeMessage == "red") {
          debugPrint("RED ROUTE");
        } else {
          debugPrint("NOTE RED ROUTE");
        }
        debugPrint(routeMessage);
      }
    });
  }

  void changePage(int index) {
    print("changepage");
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
    print("tap");
    _homePagingService.onTap(index, isFromReview: isFromReview);
  }

  @override
  // TODO: implement disposed
  bool get disposed {
    _bookingService.dispose();
    return super.disposed;
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_homePagingService];
}
