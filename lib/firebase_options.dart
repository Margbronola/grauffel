// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTbXlG2HtCuOKZbbwvPmk6XeVF8jkt_s4',
    appId: '1:711105303968:android:e1a1539ea246e4955440c5',
    messagingSenderId: '711105303968',
    projectId: 'grauffelmobile',
    storageBucket: 'grauffelmobile.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmgcnmOVgmAMEQJT4NFeiJV7IbpP08FEE',
    appId: '1:711105303968:ios:3be1a53f4b9261095440c5',
    messagingSenderId: '711105303968',
    projectId: 'grauffelmobile',
    storageBucket: 'grauffelmobile.appspot.com',
    androidClientId:
        '711105303968-heukfdhkpvv3k7n36mhqs27i75fcfiqa.apps.googleusercontent.com',
    iosClientId:
        '711105303968-qmqkgp8g6o6jidjbpssse9skbeuj6ct7.apps.googleusercontent.com',
    iosBundleId: 'com.grauffel.eg_czacademy',
  );
}
