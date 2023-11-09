import 'package:flutter/material.dart';
import 'package:project/screens/bmi_screen.dart';
import 'package:project/screens/calc_screen.dart';
import 'package:project/screens/money_screen.dart';
import 'package:project/screens/temperature_screen.dart';

class MathematicsScreen extends StatefulWidget {
  const MathematicsScreen({super.key});

  @override
  State<MathematicsScreen> createState() => _MathematicsScreenState();
}

class _MathematicsScreenState extends State<MathematicsScreen> {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalculatorScreen(),
                  ),
                );
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
                      image: AssetImage("assets/images/card3.png"),
                      fit: BoxFit.cover,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Calculator",
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 20,
                          color: Color(0xFF0F0F10),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(
                          "Calculators have revolutionized the way we handle numbers.",
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIScreen(),
                  ),
                );
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
                        "B M I",
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 20,
                          color: Color(0xFF0F0F10),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(
                          "BMI categories include underweight, normal weight, overweight, and obese.",
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TemperatureScreen(),
                  ),
                );
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
                          "Temperature Conversion",
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
                          "Temperature conversion is easier",
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MOneyScreen(),
                  ),
                );
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
                          "Currency Conversion",
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
                          "Convert your money easily.",
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
