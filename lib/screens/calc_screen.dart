import 'package:flutter/material.dart';
import 'package:project/screens/mathematics_screen.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  TextEditingController ctrlOne = new TextEditingController();
  TextEditingController ctrlTwo = new TextEditingController();
  TextEditingController ctrlThree = new TextEditingController();

  double nilai1 = 0;
  double nilai2 = 0;
  double hasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => MathematicsScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF0F0F10),
        ),
        title: Text(
          "Calculator",
          style: TextStyle(
              fontFamily: 'Semi Bold', fontSize: 14, color: Color(0xFF0F0F10)),
        ),
      ),
      body: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: ctrlOne,
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
                      color: Color(0xFF3E3F41),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  hintText: "Masukan nilai pertama",
                  labelStyle: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 14,
                    color: Color(0xFF3E3F41),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: ctrlTwo,
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
                      color: Color(0xFF3E3F41),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  hintText: "Masukan nilai kedua",
                  labelStyle: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 14,
                    color: Color(0xFF3E3F41),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: ctrlThree,
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
                      color: Color(0xFF3E3F41),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Button tambah
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        nilai1 = double.parse(ctrlOne.text);
                        nilai2 = double.parse(ctrlTwo.text);
                        hasil = nilai1 + nilai2;
                        ctrlThree.text = hasil.toString();
                      });
                    },
                    child: Container(
                      width: 54.0,
                      height: 54.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF0F0F10),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 30,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Button kurang
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        nilai1 = double.parse(ctrlOne.text);
                        nilai2 = double.parse(ctrlTwo.text);
                        hasil = nilai1 - nilai2;
                        ctrlThree.text = hasil.toString();
                      });
                    },
                    child: Container(
                      width: 54.0,
                      height: 54.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF0F0F10),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 30,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Button kali
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        nilai1 = double.parse(ctrlOne.text);
                        nilai2 = double.parse(ctrlTwo.text);
                        hasil = nilai1 * nilai2;
                        ctrlThree.text = hasil.toString();
                      });
                    },
                    child: Container(
                      width: 54.0,
                      height: 54.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF0F0F10),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "X",
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 26,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Button bagi
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        nilai1 = double.parse(ctrlOne.text);
                        nilai2 = double.parse(ctrlTwo.text);
                        hasil = nilai1 / nilai2;
                        ctrlThree.text = hasil.toString();
                      });
                    },
                    child: Container(
                      width: 54.0,
                      height: 54.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF0F0F10),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "/",
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
