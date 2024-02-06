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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDGjSXEDrOSYvScW3eGRg22F-SFN3lObgE',
    appId: '1:748814132489:web:80ded51bbf5dc544645fd8',
    messagingSenderId: '748814132489',
    projectId: 'furnitureshop-19595',
    authDomain: 'furnitureshop-19595.firebaseapp.com',
    storageBucket: 'furnitureshop-19595.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyOLkWyXkFycHYPx7WUeS5WpvJMxkVzk0',
    appId: '1:748814132489:android:f2db3ef5cf2271d3645fd8',
    messagingSenderId: '748814132489',
    projectId: 'furnitureshop-19595',
    storageBucket: 'furnitureshop-19595.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDj0oWrnBDHH_l_wd2FLKRqWrELfl9Oaf4',
    appId: '1:748814132489:ios:ff7fba44c9f2c656645fd8',
    messagingSenderId: '748814132489',
    projectId: 'furnitureshop-19595',
    storageBucket: 'furnitureshop-19595.appspot.com',
    iosBundleId: 'com.deepcode.furnitureShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDj0oWrnBDHH_l_wd2FLKRqWrELfl9Oaf4',
    appId: '1:748814132489:ios:2f578cb7f27b2eff645fd8',
    messagingSenderId: '748814132489',
    projectId: 'furnitureshop-19595',
    storageBucket: 'furnitureshop-19595.appspot.com',
    iosBundleId: 'com.deepcode.furnitureShop.RunnerTests',
  );
}