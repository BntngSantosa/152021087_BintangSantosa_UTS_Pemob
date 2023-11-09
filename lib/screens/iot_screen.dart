import 'package:flutter/material.dart';

class IOTScreen extends StatefulWidget {
  const IOTScreen({super.key});

  @override
  State<IOTScreen> createState() => _IOTScreenState();
}

class _IOTScreenState extends State<IOTScreen> {
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
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => MOneyScreen(),
                //   ),
                // );
              },
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
                      image: AssetImage("assets/images/card6.png"),
                      fit: BoxFit.cover,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 140,
                        child: Text(
                          "History",
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 20,
                            color: Color(0xFF0F0F10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(
                          "View history easily and quickly.",
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
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => TemperatureScreen(),
                //   ),
                // );
              },
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
                    image: AssetImage("assets/images/card5.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 140,
                        child: Text(
                          "Controller",
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 20,
                            color: Color(0xFF0F0F10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(
                          "Control your aquarium easily.",
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
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => BMIScreen(),
                //   ),
                // );
              },
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
                      image: AssetImage("assets/images/card4.png"),
                      fit: BoxFit.cover,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Water Monitoring",
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 20,
                          color: Color(0xFF0F0F10),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(
                          "Monitor your aquarium easily.",
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
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
