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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBgyGUeKAgjeIVX5F7rFbvmKypVJlHsk8o',
    appId: '1:292729575148:web:a04331e5497a77d2cbf7c9',
    messagingSenderId: '292729575148',
    projectId: 'kuziem-364900',
  );
  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBgyGUeKAgjeIVX5F7rFbvmKypVJlHsk8o',
    appId: '1:292729575148:web:a04331e5497a77d2cbf7c9',
    messagingSenderId: '292729575148',
    projectId: 'kuziem-364900',
    authDomain: 'kuziem-364900.firebaseapp.com',
    storageBucket: 'kuziem-364900.appspot.com',
    measurementId: 'G-9SNHM5VL1S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZpLpDlw1_M-rDDs6G7dVLCY0Qj8HUMZ0',
    appId: '1:292729575148:android:fa76ebc03977233acbf7c9',
    messagingSenderId: '292729575148',
    projectId: 'kuziem-364900',
    storageBucket: 'kuziem-364900.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBWoVaaL19saYlAceYoJiCW7lICHFiL7E',
    appId: '1:292729575148:ios:9f8f95eee58ebc41cbf7c9',
    messagingSenderId: '292729575148',
    projectId: 'kuziem-364900',
    storageBucket: 'kuziem-364900.appspot.com',
    androidClientId:
        '292729575148-tvp67646ei2no1a4kt7lrla37efndavn.apps.googleusercontent.com',
    iosClientId:
        '292729575148-1epipd5hjchtcu1e1gpeipmn3tf21vcm.apps.googleusercontent.com',
    iosBundleId: 'com.example.kuziem',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDBWoVaaL19saYlAceYoJiCW7lICHFiL7E',
    appId: '1:292729575148:ios:9f8f95eee58ebc41cbf7c9',
    messagingSenderId: '292729575148',
    projectId: 'kuziem-364900',
    storageBucket: 'kuziem-364900.appspot.com',
    androidClientId:
        '292729575148-tvp67646ei2no1a4kt7lrla37efndavn.apps.googleusercontent.com',
    iosClientId:
        '292729575148-1epipd5hjchtcu1e1gpeipmn3tf21vcm.apps.googleusercontent.com',
    iosBundleId: 'com.example.kuziem',
  );
}
