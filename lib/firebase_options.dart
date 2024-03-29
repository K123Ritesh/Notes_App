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
    apiKey: 'AIzaSyAq-JjEk2qa8QfAhdv7qG_yJyfHiHHemgU',
    appId: '1:843705832541:web:95072104a8a3871dd3e9b4',
    messagingSenderId: '843705832541',
    projectId: 'notes-app-86c6f',
    authDomain: 'notes-app-86c6f.firebaseapp.com',
    storageBucket: 'notes-app-86c6f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB78s5KcucbLh4d9NnQO9NEg7Nz17aGB4Q',
    appId: '1:843705832541:android:29569e6d1b9631c0d3e9b4',
    messagingSenderId: '843705832541',
    projectId: 'notes-app-86c6f',
    storageBucket: 'notes-app-86c6f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDr219rn8vlEmTL7x3LwVSS0WWbfyyOL00',
    appId: '1:843705832541:ios:596b3d09f539d3e1d3e9b4',
    messagingSenderId: '843705832541',
    projectId: 'notes-app-86c6f',
    storageBucket: 'notes-app-86c6f.appspot.com',
    iosClientId: '843705832541-kd5ku2prarnpeo07qrvgg4udpfg3imb0.apps.googleusercontent.com',
    iosBundleId: 'com.example.notesApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDr219rn8vlEmTL7x3LwVSS0WWbfyyOL00',
    appId: '1:843705832541:ios:596b3d09f539d3e1d3e9b4',
    messagingSenderId: '843705832541',
    projectId: 'notes-app-86c6f',
    storageBucket: 'notes-app-86c6f.appspot.com',
    iosClientId: '843705832541-kd5ku2prarnpeo07qrvgg4udpfg3imb0.apps.googleusercontent.com',
    iosBundleId: 'com.example.notesApp',
  );
}
