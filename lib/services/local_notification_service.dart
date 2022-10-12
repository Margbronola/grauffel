import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'user_api_service.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static void initialize() {
    const InitializationSettings initializationSettings =
        InitializationSettings(
            iOS: DarwinInitializationSettings(
              requestSoundPermission: false,
              requestBadgePermission: false,
              requestAlertPermission: false,
            ),
            android: AndroidInitializationSettings('@mipmap/ic_launcher'));

    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> requestPermissions(
      UserAPIService userAPIService, String token) async {
    debugPrint("PERMISSIONS CHECKING");
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint("NOTIFICATION ON");
      userAPIService.saveFCM(token: token);
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint("NOTIFICATION OFF");
      userAPIService.removeFCMToken(token: token);
    } else {
      debugPrint("NOTIFICATION OFF");
      userAPIService.removeFCMToken(token: token);
      debugPrint('User declined or has not accepted permission');
    }
  }

  static void display(RemoteMessage notification) {
    _flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.notification!.title,
        notification.notification!.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'high_importance_channel',
            'High Importance Notifications',
            channelDescription:
                'This channel is used for important notifications.',
            importance: Importance.max,
            priority: Priority.max,
          ),
        ));
  }
}
