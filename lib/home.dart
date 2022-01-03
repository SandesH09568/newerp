// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'login.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

List _loadedPhotos = [];

class _MyHomeState extends State<MyHome> {
  web() async {
    var r = await http
        .get(Uri.http("192.168.43.111:8000", "/user/student/kbtug19368/"));
    print(r.body);
    print(json.decode(r.body));

    // Map userMap = jsonDecode(json.decode(r.body));
    // var user = User.fromJson(userMap);

    // final String content = await r.transform(utf8.decoder).join();
    final List data = json.decode(r.body);

    print(data);

    setState(() {
      _loadedPhotos = data;
    });

    // var url =
    //     Uri.http("54.89.4.30", "/cgi-bin/docker_cgi.py", {"x": cmd, "y": cn});
    // var response = await http.get(url);
    // print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 80.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: web,
                  child: const Text("Click to run"),
                ),
                // SizedBox(
                //   height: 10.0,
                // ),

                // Text(_loadedPhotos[0]["STUDENT_ID"]),

                // Text(
                //   style: TextStyle(
                //     fontSize: 23,
                //     fontWeight: FontWeight.w700,
                //     color: Colors.yellow,
                //   ),
                // ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Information Technology',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.yellow,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'KBTUG18181',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.yellow,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],

              // Text(
              // '10 task done',
              // style: TextStyle(
              //   fontSize: 20,
              //   color: Colors.white,
              // ),
              // ),
              // SizedBox(
              //   height: 150.0,
              // ),
            ),
          ),
          Expanded(
              child: Container(
            // height: 580.0,
            decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(3.0),
                children: <Widget>[
                  makeDashboardItem("Assignments", Icons.book),
                  makeDashboardItem("Fees", Icons.money),
                  makeDashboardItem("Time Table", Icons.table_chart),
                  makeDashboardItem("Result", Icons.note_add),
                  makeDashboardItem("Alphabet", Icons.alarm),
                  makeDashboardItem("Alphabet", Icons.alarm),
                  makeDashboardItem("Alphabet", Icons.alarm),
                  makeDashboardItem("Alphabet", Icons.alarm),
                  makeDashboardItem("Alphabet", Icons.alarm)
                ],
              ),
            ),
          )
              //   child: Container(
              //     padding: const EdgeInsets.only(
              //         left: 16, right: 16, bottom: 16, top: 12),
              //     child: GridView.count(
              //       crossAxisSpacing: 16,
              //       mainAxisSpacing: 16,
              //       crossAxisCount: 2,
              //       childAspectRatio: 0.98,
              //       children: List.generate(1, (_) {
              //         return Card(
              //           elevation: 4,
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(8)),
              //           child: Center(
              //             child: Column(
              //               mainAxisSize: MainAxisSize.min,
              //               children: const <Widget>[FlutterLogo(), Text('data')],
              //             ),
              //           ),
              //         );
              //       }),
              //     ),
              //   ),
              // ),
              ),
        ],
      ),
    );
  }
}

Card makeDashboardItem(String title, IconData icon) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1.0,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            const SizedBox(height: 50.0),
            Center(
                child: Icon(
              icon,
              size: 40.0,
              color: Colors.black,
            )),
            const SizedBox(height: 20.0),
            Center(
              child: Text(title,
                  style: const TextStyle(fontSize: 18.0, color: Colors.black)),
            )
          ],
        ),
      ));
}
