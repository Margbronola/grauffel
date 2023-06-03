import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path_provider/path_provider.dart';
import 'user_api_service.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//   static void initialize() async {
//     // Android initialization
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const DarwinInitializationSettings iosInitialization =
//         DarwinInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: false,
//       requestSoundPermission: false,
//       // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
//     );
// // ios initialization
//     // const IOSInitializationSettings initializationSettingsIOS =
//     //     IOSInitializationSettings(

//     // );

//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: iosInitialization,
//     );
// // the initialization settings are initialized after they are setted
//     await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

  static void initialize() {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      iOS: DarwinInitializationSettings(
        requestSoundPermission: false,
        requestBadgePermission: false,
        requestAlertPermission: false,
      ),
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );

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

  Future<String> _downloadAndSaveFile(String url, String fileName) async {
    final Directory? directory = await getExternalStorageDirectory();
    final String filePath = '${directory!.path}/$fileName.png';
    final http.Response response = await http.get(Uri.parse(url));
    final File file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }

  Future display({required RemoteMessage notification}) async {
    debugPrint("test notification alert");
    debugPrint("LINK: ${notification.notification!.android!.link}");

    final String largeIconPath = await _downloadAndSaveFile(
      'https://back.eg-czacademy.com/images/${notification.notification?.android?.imageUrl}',
      'largeIcon',
    );

    await _flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.notification!.title,
      notification.notification!.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          channelDescription:
              'This channel is used for important notifications.',
          // // channelDescription:
          // 'This channel is used for important notifications.',
          importance: Importance.max,
          priority: Priority.max,
          icon: '@mipmap/ic_launcher',
          largeIcon: FilePathAndroidBitmap(largeIconPath),
          styleInformation: const BigTextStyleInformation(''),
        ),
      ),
    );
  }
}
