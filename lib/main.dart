import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'register_screen.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures that bindings are initialized.
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCOHR4qe2Urixa4-4Uetu6GGkgZNMMeIg0",
          appId: "1:599903305909:android:7bb0bdef1be3b131c77efc",
          messagingSenderId: "599903305909",
          projectId: "login-c8cc8")); // Initialize Firebase

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/signup': (context) => RegisterPage(),
      },
    );
  }
}
