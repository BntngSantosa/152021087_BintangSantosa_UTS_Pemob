import 'package:flutter/material.dart';
import 'package:project/screens/login_screen.dart';

class SPlashScreen extends StatefulWidget {
  const SPlashScreen({super.key});

  @override
  State<SPlashScreen> createState() => _SPlashScreenState();
}

class _SPlashScreenState extends State<SPlashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset("assets/images/trello.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "DeepM",
                    style: TextStyle(
                      fontFamily: 'Semi Bold',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "Let's start to gain",
                    style: TextStyle(
                      fontFamily: 'Semi Bold',
                      fontSize: 30,
                      color: Color(0xFFA7A7A8),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "more numeracy experience for",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Semi Bold',
                      fontSize: 30,
                      color: Color(0xFF0F0F10),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "your intelligence",
                    style: TextStyle(
                      fontFamily: 'Semi Bold',
                      fontSize: 30,
                      color: Color(0xFFA7A7A8),
                    ),
                  ),
                ),
              ],
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
              child: Container(
                width: double.infinity,
                height: 54.0,
                decoration: BoxDecoration(
                  color: Color(0xFF0F0F10),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Gest started",
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
    );
  }
}
