// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'signup.dart';

// import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

late String _name, _email, _password, _kbtug, _addhar, _prn, _kbtemail, _phone;

class _SignUpState extends State<SignUp> {
  navigateToLogin() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  navigateToHome() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      backgroundColor: Color(0xFFFFD89E),
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
                  height: 250,
                  width: 400,
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 35.0,
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'SignUp Here',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2B5BBA),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) return 'Enter Name';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    prefixIcon: Icon(Icons.person),
                                    hintText: 'Enter Full Name',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  onSaved: (input) => _name = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) return 'Enter Email';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    prefixIcon: Icon(Icons.email),
                                    hintText: 'Enter KBTUG Email ID',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  onSaved: (input) => _email = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.length < 6)
                                      return 'Provide Minimum 6 Character';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: Icon(Icons.lock),
                                    hintText: 'Enter Password',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  obscureText: true,
                                  onSaved: (input) => _password = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.length < 6)
                                      return 'Provide Minimum 6 Character';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Re-enter Password',
                                    prefixIcon: Icon(Icons.lock),
                                    hintText: 'Re-Enter Password',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  obscureText: true,
                                  onSaved: (input) => _password = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) return 'Enter Email';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'KBTUG ID',
                                    prefixIcon: Icon(Icons.account_box_sharp),
                                    hintText: 'Enter KBTUG ID',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  onSaved: (input) => _email = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) return 'Enter Email';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'PRN Number',
                                    prefixIcon: Icon(Icons.email),
                                    hintText: 'Enter PRN Number',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  onSaved: (input) => _prn = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) return 'Enter Email';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Phone Number',
                                    prefixIcon: Icon(Icons.add_ic_call_sharp),
                                    hintText: 'Enter Phone Number',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  onSaved: (input) => _email = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: TextFormField(
                                  validator: (input) {
                                    if (input!.isEmpty) return 'Enter Email';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Addhaar Card Number',
                                    prefixIcon: Icon(Icons.account_balance),
                                    hintText: 'Enter Valid Addhaar Card Number',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  onSaved: (input) => _email = input!),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const SizedBox(height: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    onPressed: navigateToHome,
                                    child: const Text('SignUp',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Text('Already Have An Account?'),
                    onTap: navigateToLogin,
                  )
                ],
              ),
            ),
          ),
        ],
        // ),
      ),
    );
  }
}
