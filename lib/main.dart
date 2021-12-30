import 'package:flutter/material.dart';

import 'home.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        // "reg": (context) => MyReg(),
        // "login": (context) => MyLogin(),
        // "chat": (context) => MyChat(),
        // "image": (context) => MyImage(),
        // "mysplash": (context) => MySplash(),
      },
    ),
  );
}
