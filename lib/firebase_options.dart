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
    apiKey: 'AIzaSyAgqFoqvFeL1jt0GpTm52CdrTvkxs53E8s',
    appId: '1:369197213412:web:091f14f33dad8bf2a6eef1',
    messagingSenderId: '369197213412',
    projectId: 'byremapp',
    authDomain: 'byremapp.firebaseapp.com',
    databaseURL: 'https://byremapp-default-rtdb.firebaseio.com',
    storageBucket: 'byremapp.appspot.com',
    measurementId: 'G-H6YEEQN9PY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfGkRZF-bUPWR8sgvBmXEANteHA6iTCTQ',
    appId: '1:369197213412:android:38962b4e16d04bd2a6eef1',
    messagingSenderId: '369197213412',
    projectId: 'byremapp',
    databaseURL: 'https://byremapp-default-rtdb.firebaseio.com',
    storageBucket: 'byremapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgASKqV4AohQeKqKTAz5SsrmkTIjT6KS0',
    appId: '1:369197213412:ios:fe97e507d6193899a6eef1',
    messagingSenderId: '369197213412',
    projectId: 'byremapp',
    databaseURL: 'https://byremapp-default-rtdb.firebaseio.com',
    storageBucket: 'byremapp.appspot.com',
    iosClientId: '369197213412-76h51oodneop82uqd7ddh7hguvat4edd.apps.googleusercontent.com',
    iosBundleId: 'com.example.texttospeech',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgASKqV4AohQeKqKTAz5SsrmkTIjT6KS0',
    appId: '1:369197213412:ios:fae8157c6bc8d4f4a6eef1',
    messagingSenderId: '369197213412',
    projectId: 'byremapp',
    databaseURL: 'https://byremapp-default-rtdb.firebaseio.com',
    storageBucket: 'byremapp.appspot.com',
    iosClientId: '369197213412-ip9n7tf7fiviodda26jm9ib85lu0ure7.apps.googleusercontent.com',
    iosBundleId: 'com.example.texttospeech.RunnerTests',
  );
}
