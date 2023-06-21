// ignore_for_file: unused_field, avoid_print, deprecated_member_use

import 'package:another_flushbar/flushbar.dart';
import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/local_notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Future<void> backgroundHandler(RemoteMessage message) async {
    print("Handling a background message");
    await Firebase.initializeApp();
    LocalNotificationService.initialize();
    LocalNotificationService().display(notification: message);
    print("title: ${message.notification!.title}");
    print("body: ${message.notification!.body}");
  }

  void initState(context) async {
    _homePagingService.setPage(0);
    _homePagingService.setController(PageController());
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
    FirebaseMessaging.instance.getInitialMessage();
    LocalNotificationService.requestPermissions(
        _userAPIService, userService.token!);
    // LocalNotificationService.initialize();

    String? token = await FirebaseMessaging.instance.getToken();
    debugPrint("Message token: ${token!}");

    // IOS FOREGRUOUND NOTIFICATION
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    //FOREGRUOUND
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint("ON Message: $message");
      LocalNotificationService.initialize();
      LocalNotificationService().display(notification: message);
    });

    //BACKGROUND
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      LocalNotificationService.initialize();
      print("Message on App opened ${event.toString()}");
      debugPrint("OPENEd");
      LocalNotificationService().display(notification: event);
    });
  }

  // Future<void> _messageHandler(RemoteMessage message) async {
  //   Map<String, dynamic> data = message.data;
  //   print("NOTIFICATION DETAILS: $data");
  //   LocalNotificationService().display(notification: message);
  // }

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
