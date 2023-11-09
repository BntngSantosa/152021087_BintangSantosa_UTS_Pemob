import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obScure = true;
  bool _obScuree = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 20, bottom: 40),
                child: SizedBox(
                  width: 225,
                  child: Text(
                    "Let's start with Signup",
                    style: TextStyle(
                      fontFamily: 'Semi Bold',
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  height: 372,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(15, 0, 0, 0),
                        offset: const Offset(
                          0,
                          0,
                        ),
                        blurRadius: 50.0,
                        spreadRadius: 0,
                      ), //
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 40, left: 30, right: 30),
                        child: TextField(
                          style: TextStyle(
                            fontFamily: 'Light',
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF3E3F41),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    Color(0xFF3E3F41), // Warna saat difokuskan
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            label: Text("Username"),
                            labelStyle: TextStyle(
                              fontFamily: 'Light',
                              fontSize: 14,
                              color: Color(0xFF3E3F41),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: TextField(
                          obscureText: _obScure,
                          style: TextStyle(
                            fontFamily: 'Light',
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF3E3F41),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    Color(0xFF3E3F41), // Warna saat difokuskan
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontFamily: 'Light',
                              fontSize: 14,
                              color: Color(0xFF3E3F41),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _obScure =
                                        !_obScure; // Mengubah nilai _obScure saat ikon mata ditekan
                                  },
                                );
                              },
                              child: Icon(
                                _obScure
                                    ? CupertinoIcons.eye_slash
                                    : CupertinoIcons.eye,
                                color: Color(0xFF3E3F41),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: TextField(
                          obscureText: _obScuree,
                          style: TextStyle(
                            fontFamily: 'Light',
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF3E3F41),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    Color(0xFF3E3F41), // Warna saat difokuskan
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            labelText: "Confirm password",
                            labelStyle: TextStyle(
                              fontFamily: 'Light',
                              fontSize: 14,
                              color: Color(0xFF3E3F41),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _obScuree =
                                        !_obScuree;
                                  },
                                );
                              },
                              child: Icon(
                                _obScuree
                                    ? CupertinoIcons.eye_slash
                                    : CupertinoIcons.eye,
                                color: Color(0xFF3E3F41),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 30, right: 30),
                        child: Container(
                          width: double.infinity,
                          height: 54.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF0F0F10),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                fontFamily: 'Medium',
                                fontSize: 16,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account ? ",
                        style: TextStyle(
                          fontFamily: 'Light',
                          fontSize: 12,
                          color: Color(0xFF3E3F41),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 12,
                            color: Color(0xFF3E3F41),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}