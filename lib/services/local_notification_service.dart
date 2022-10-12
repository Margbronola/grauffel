import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'user_api_service.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static const bool _notificationsEnabled = false;

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
    print("PERMISSIONS CHECKING");
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
      print("NOTIFICATION ON");
      userAPIService.saveFCM(token: token);
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print("NOTIFICATION OFF");
      userAPIService.removeFCMToken(token: token);
    } else {
      print("NOTIFICATION OFF");
      userAPIService.removeFCMToken(token: token);
      print('User declined or has not accepted permission');
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
