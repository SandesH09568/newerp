// import 'dart:html';

import 'package:erp/login.dart';
import 'package:flutter/material.dart';

class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(const Duration(seconds: 5)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Login(),
          );
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Image.asset(
                'images/logo.png',
                width: 400,
                height: 250,
              ),
            ),
            const Text(
              "MVP's",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Text(
              "K.B.T. COE",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent[700],
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Udoji Maratha Boarding Campus, Near Pumping Station, Gangapur Road, Nashik",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'images/naac.png',
                width: 400,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
