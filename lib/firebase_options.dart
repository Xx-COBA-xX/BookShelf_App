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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC5cI8v2hTJtKesXzmm3QcAXRRyrBBGZQY',
    appId: '1:918947814336:web:6676d988300edd028ec625',
    messagingSenderId: '918947814336',
    projectId: 'bookshilf-b2292',
    authDomain: 'bookshilf-b2292.firebaseapp.com',
    storageBucket: 'bookshilf-b2292.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA21b5E0CSIEgbywCBbczYVxlLDEQcfjm0',
    appId: '1:918947814336:android:7d35108d267a661d8ec625',
    messagingSenderId: '918947814336',
    projectId: 'bookshilf-b2292',
    storageBucket: 'bookshilf-b2292.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5lSR6eUx6Fxs2kCItb2cjpv9H7L72FmU',
    appId: '1:918947814336:ios:9a44767694ca85ef8ec625',
    messagingSenderId: '918947814336',
    projectId: 'bookshilf-b2292',
    storageBucket: 'bookshilf-b2292.appspot.com',
    iosClientId: '918947814336-4ot90hguavm5fhrrb0b6sb6hf9mtdlph.apps.googleusercontent.com',
    iosBundleId: 'com.example.myLibraryApp',
  );
}
