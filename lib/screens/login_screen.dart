import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obScure = true;

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

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
                    "Let's start with Login",
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
                      // Username
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 40, left: 30, right: 30),
                        child: TextField(
                          controller: usernameController,
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

                      // Password
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: TextField(
                          controller: passwordController,
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

                      // Button login
                      GestureDetector(
                        onTap: () {
                          String username = "user";
                          String password = "user";

                          if ((usernameController.text == username) &&
                              (passwordController.text == password)) {
                                usernameController.text = "";
                                passwordController.text = "";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          } else if ((usernameController.text == "") ||
                              (passwordController.text == "")) {
                            showDialog(
                              context:
                                  context, // context adalah BuildContext dari widget Anda
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Login failed !",
                                    style: TextStyle(
                                        fontFamily: "Regular",
                                        fontSize: 14,
                                        color: Colors.red),
                                  ),
                                  content: Text(
                                    "username or password don't empety",
                                    style: TextStyle(
                                        fontFamily: "Light", fontSize: 14),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Untuk menutup dialog
                                      },
                                      child: Text("Tutup"),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            showDialog(
                              context:
                                  context, // context adalah BuildContext dari widget Anda
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Login failed !",
                                    style: TextStyle(
                                        fontFamily: "Regular",
                                        fontSize: 14,
                                        color: Colors.red),
                                  ),
                                  content: Text(
                                    "username or password wrong !",
                                    style: TextStyle(
                                        fontFamily: "Light", fontSize: 14),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Untuk menutup dialog
                                      },
                                      child: Text("Tutup"),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            width: double.infinity,
                            height: 54.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF0F0F10),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontFamily: 'Medium',
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Forgot Password
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forgot password ?",
                            style: TextStyle(
                                fontFamily: 'Light',
                                fontSize: 12,
                                color: Color(0xFF3E3F41)),
                          ),
                        ),
                      ),

                      // Button google
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 40, left: 30, right: 30),
                        child: Container(
                          width: double.infinity,
                          height: 54.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF3E3F41),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Continue with google",
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

              // Text signup
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ? ",
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
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Signup",
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
