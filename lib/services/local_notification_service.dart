// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'user_api_service.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  final BehaviorSubject<String> behaviorSubject = BehaviorSubject();

  initialize() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onSelectNotification,
      onDidReceiveBackgroundNotificationResponse: onSelectNotification,
    );
  }

  onSelectNotification(NotificationResponse notificationResponse) async {
    if (notificationResponse.payload != null) {
      String url = '${notificationResponse.payload}';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
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

    print('User granted permission: ${settings.authorizationStatus}');
  }

  Future<String> _downloadAndSaveFile(String url, String fileName) async {
    final Directory? directory = await getExternalStorageDirectory();
    final String filePath = '${directory!.path}/$fileName';
    final http.Response response = await http.get(Uri.parse(url));
    final File file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }

  Future display({required RemoteMessage notification}) async {
    debugPrint("test notification alert");
    debugPrint("DATA: ${notification.data}");
    debugPrint("TITLE: ${notification.notification!.title}");
    debugPrint("BODY: ${notification.notification!.body}");
    debugPrint("LINK: ${notification.data['link']}");
    debugPrint("IMAGE: ${notification.notification!.android?.imageUrl}");
    debugPrint("IOS");
    debugPrint("IMAGE: ${notification.notification!.apple?.imageUrl}");

    final String largeIconPath = await _downloadAndSaveFile(
      'https://back.eg-czacademy.com/images/${notification.notification!.android?.imageUrl ?? ""}',
      'largeIcon',
    );

    await _flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.notification!.title,
      notification.notification!.body,
      NotificationDetails(
        // iOS: DarwinNotificationDetails(attachments: [
        //   DarwinNotificationAttachment(
        //       "https://back.eg-czacademy.com/images/${notification.notification!.apple?.imageUrl}")
        // ]),
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          channelDescription:
              'This channel is used for important notifications.',
          importance: Importance.max,
          priority: Priority.max,
          icon: '@mipmap/ic_launcher',
          largeIcon: FilePathAndroidBitmap(largeIconPath),
          styleInformation: const BigTextStyleInformation(''),
        ),
      ),
      payload: notification.data['link'],
    );
  }
}
