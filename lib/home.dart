// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import 'login.dart';

class MyHome extends StatelessWidget {
  late String _name, _email, _password;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

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
                  height: 250,
                  width: 400,
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
                        'Login Here',
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
                                    hintText: 'Name',
                                    // helperText: 'Helper Text',
                                    // counterText: '0 characters',
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
                                    hintText: 'Enter Email',
                                    // helperText: 'Helper Text',
                                    // counterText: '0 characters',
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
                                    // helperText: 'Helper Text',
                                    // counterText: '0 characters',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                  obscureText: true,
                                  onSaved: (input) => _password = input!),
                            ),
                            const SizedBox(height: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: ElevatedButton(
                                    // padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                                    // onPressed: signUp,
                                    style: ElevatedButton.styleFrom(
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    onPressed: () {},

                                    child: const Text('SignUp',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold)),
                                    // color: Colors.orange,
                                    // shape: RoundedRectangleBorder(
                                    //   borderRadius: BorderRadius.circular(20.0),
                                    // ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  child: ElevatedButton(
                                    // padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                                    // onPressed: signUp,
                                    style: ElevatedButton.styleFrom(
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // color: Colors.orange,
                                    // shape: RoundedRectangleBorder(
                                    //   borderRadius: BorderRadius.circular(20.0),
                                    // ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Text('Already Have An Account?'),
                    // onTap: navigateToLogin,
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
