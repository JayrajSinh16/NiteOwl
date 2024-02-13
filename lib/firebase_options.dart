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
    apiKey: 'AIzaSyAsWW29BljM8ZRzKZPKJkgom15fD6vIzgw',
    appId: '1:217935880277:web:7bf84029f90e0cec06b4dc',
    messagingSenderId: '217935880277',
    projectId: 'niteowl-1616',
    authDomain: 'niteowl-1616.firebaseapp.com',
    storageBucket: 'niteowl-1616.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUhWcT6Y_vVZ5xuthyMLF6Wlg8pSpykxk',
    appId: '1:217935880277:android:9fc949aba0bc174506b4dc',
    messagingSenderId: '217935880277',
    projectId: 'niteowl-1616',
    storageBucket: 'niteowl-1616.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlLv9KXCY0NpRl1dD2SQhHGJbH0I8iA6M',
    appId: '1:217935880277:ios:77901c080e8a5c4306b4dc',
    messagingSenderId: '217935880277',
    projectId: 'niteowl-1616',
    storageBucket: 'niteowl-1616.appspot.com',
    iosBundleId: 'com.example.niteowl',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlLv9KXCY0NpRl1dD2SQhHGJbH0I8iA6M',
    appId: '1:217935880277:ios:472bf6ea709db0d406b4dc',
    messagingSenderId: '217935880277',
    projectId: 'niteowl-1616',
    storageBucket: 'niteowl-1616.appspot.com',
    iosBundleId: 'com.example.niteowl.RunnerTests',
  );
}
