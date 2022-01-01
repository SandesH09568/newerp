import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        // "home": (context) => MyHome(),
        "login": (context) => Login(),

        // "reg": (context) => MyReg(),
        // "chat": (context) => MyChat(),
        // "image": (context) => MyImage(),
        // "mysplash": (context) => MySplash(),
      },
    ),
  );
}
