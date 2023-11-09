import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFFF),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(20, 0, 0, 0),
                    offset: const Offset(
                      0,
                      0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 0,
                  ), //
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/card1.png"),
                  fit: BoxFit.cover,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mathematics",
                      style: TextStyle(
                        fontFamily: 'Medium',
                        fontSize: 20,
                        color: Color(0xFF0F0F10),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Mathematics is the music of reason.",
                        style: TextStyle(
                          fontFamily: 'Light',
                          fontSize: 12,
                          color: Color(0xFF0F0F10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFFF),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(20, 0, 0, 0),
                    offset: const Offset(
                      0,
                      0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 0,
                  ), //
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/card2.png"),
                  fit: BoxFit.cover,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Text(
                        "Internet of Things",
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 20,
                          color: Color(0xFF0F0F10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "In the world of IoT",
                        style: TextStyle(
                          fontFamily: 'Light',
                          fontSize: 12,
                          color: Color(0xFF0F0F10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
