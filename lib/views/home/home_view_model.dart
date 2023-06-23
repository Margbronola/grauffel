// ignore_for_file: unused_field, avoid_print, deprecated_member_use

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
  final localNotification = LocalNotificationService();

  Future<void> backgroundHandler(RemoteMessage message) async {
    print("Handling a background message");
    await Firebase.initializeApp();
    // LocalNotificationService.initialize();
    localNotification.initialize;
    LocalNotificationService().display(notification: message);
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
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print("ON Message: $message");
      localNotification.initialize();
      _messageHandler(message);
    });

    //BACKGROUND
    FirebaseMessaging.onMessageOpenedApp.listen((event) async {
      localNotification.initialize();
      print("Message on App opened");
      if (event.data['link'] != null) {
        String url = '${event.data['link']}';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      } else {
        _messageHandler(event);
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
