import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Student_Profile extends StatefulWidget {
  const Student_Profile({Key? key}) : super(key: key);

  @override
  _Student_ProfileState createState() => _Student_ProfileState();
}

class _Student_ProfileState extends State<Student_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFCC81),
      body: ListView(
        // child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 60.0,
              left: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Image(
                  image: AssetImage("images/logo.png"),
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                ),

                // Text(
                // '10 task done',
                // style: TextStyle(
                //   fontSize: 20,
                //   color: Colors.white,
                // ),
                // ),
                SizedBox(
                  height: 35.0,
                ),
              ],
            ),
          ),
          Container(
            // height: 400,
            // height: MediaQuery.of(context).size.height * 3,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
                // bottomLeft: Radius.circular(40.0),
                // bottomRight: Radius.circular(40.0),
              ),
            ),
            // height: 500,
            // width: 500,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 5,
                          ),
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        height: 150,
                        width: 350,
                        // color: Colors.blue,

                        child: Row(
                          children: [
                            Container(
                              child: const CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 55,
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundImage:
                                      AssetImage('images/profile.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  children: const <Widget>[
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    Text(
                                      'Bhanudas Rane',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 23,
                                        // fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Information Technology',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'KBTUG18181',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                                color: Colors.amber,
                                // height: 25,
                                // width: 25,
                                child: Column(
                                  children: const [
                                    Text(
                                      'Class',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        // fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'BE',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        // fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),

                      const SizedBox(
                        width: 90.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                                // height: 25,
                                // width: 25,
                                child: Column(
                              children: const [
                                Text(
                                  'DOB',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '15/07/2000',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 40.0,
                      //   width: 25.0,
                      // ),

                      // Text(
                      //   '',
                      //   textAlign: TextAlign.right,
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     // fontWeight: FontWeight.w700,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                                // height: 25,
                                // width: 25,
                                child: Column(
                              children: const [
                                Text(
                                  'Academic Year',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '2021-22',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),

                      const SizedBox(
                        width: 90.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                                // height: 25,
                                // width: 25,
                                child: Column(
                              children: const [
                                Text(
                                  'Sex',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'M',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 10,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 40.0,
                      //   width: 25.0,
                      // ),

                      // Text(
                      //   '',
                      //   textAlign: TextAlign.right,
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     // fontWeight: FontWeight.w700,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                                // height: 25,
                                // width: 25,
                                child: Column(
                              children: const [
                                Text(
                                  'Phone No.',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '7397800565',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),

                      const SizedBox(
                        width: 90.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              // height: 25,
                              // width: 25,
                              child: Column(
                                children: const [
                                  Text(
                                    'Admission Date',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '11/07/2018',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 40.0,
                      //   width: 25.0,
                      // ),

                      // Text(
                      //   '',
                      //   textAlign: TextAlign.right,
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     // fontWeight: FontWeight.w700,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              // height: 25,
                              // width: 25,
                              child: Column(
                                children: const [
                                  Text(
                                    'Email',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'ranebhushan786@gmail.com',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        width: 90.0,
                      ),

                      // SizedBox(
                      //   height: 40.0,
                      //   width: 25.0,
                      // ),

                      // Text(
                      //   '',
                      //   textAlign: TextAlign.right,
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     // fontWeight: FontWeight.w700,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              // height: 25,
                              // width: 25,
                              child: Column(
                                children: const [
                                  Text(
                                    'Per Address',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Kamatwade Nashik 10',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        width: 90.0,
                      ),

                      // SizedBox(
                      //   height: 40.0,
                      //   width: 25.0,
                      // ),

                      // Text(
                      //   '',
                      //   textAlign: TextAlign.right,
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     // fontWeight: FontWeight.w700,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
