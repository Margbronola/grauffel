// ignore_for_file: unused_field, avoid_print, deprecated_member_use

import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/local_notification_service.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../services/user_api_service.dart';
import '../../services/user_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final HomePagingService _homePagingService = locator<HomePagingService>();
  final BookingService _bookingService = locator<BookingService>();
  int get selectedIndex => _homePagingService.selectedPage;
  PageController get pageController => _homePagingService.pageController!;
  bool get isFromReview => _homePagingService.isFromReview;

  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  bool get isProfilePage => _homePagingService.isProfileView;

  Future<void> backgroundHandler(RemoteMessage message) async {}

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

    // Check if you received the link via `getInitialLink` first
    final PendingDynamicLinkData? initialLink =
        await FirebaseDynamicLinks.instance.getInitialLink();
    print("INITIAL LINK: $initialLink");

    //FOREGRUOUND
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.initialize();
      _messageHandler(message);
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

  Future<void> _messageHandler(RemoteMessage message) async {
    Map<String, dynamic> data = message.data;
    print(data);
    await LocalNotificationService().display(notification: message);
  }

  void changePage(int index) {
    print("changepage");
    _homePagingService.setPage(index);
    notifyListeners();
  }

  void onTap(int index, {bool isFromReview = false}) {
    print("tap");
    _homePagingService.onTap(index, isFromReview: isFromReview);
  }

  @override
  void dispose() {
    _homePagingService.pageController!.dispose();
    super.dispose();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_homePagingService];
}
