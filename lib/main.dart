import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'signup.dart';
import 'splashscreen.dart';
import 'student_profile.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "mysplash",
      routes: {
        "home": (context) => MyHome(),
        "login": (context) => Login(),
        "signup": (context) => SignUp(),

        "student_profile": (context) => Student_Profile(),
        // "chat": (context) => MyChat(),
        // "image": (context) => MyImage(),
        "mysplash": (context) => MySplash(),
      },
    ),
  );
}
