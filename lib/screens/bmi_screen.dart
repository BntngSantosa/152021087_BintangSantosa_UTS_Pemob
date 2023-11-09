import 'package:flutter/material.dart';
import 'package:project/screens/mathematics_screen.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  TextEditingController ctrlOne = new TextEditingController();
  TextEditingController ctrlTwo = new TextEditingController();
  TextEditingController ctrlThree = new TextEditingController();

  double weight = 0;
  double height = 0;
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
          "BMI Calculator",
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
                  hintText: "Masukan weight",
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
                  hintText: "Masukan height",
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

              // Button tambah
              GestureDetector(
                onTap: () {
                  setState(() {
                    weight = double.parse(ctrlOne.text);
                    height = double.parse(ctrlTwo.text);
                    hasil = weight / ((height / 100) * (height / 100));
                    ctrlThree.text = hasil.toString();
                    if ((hasil >= 18.5) && (hasil <= 24.9)) {
                      showDialog(
                        context:
                            context, // context adalah BuildContext dari widget Anda
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "Normal",
                              style: TextStyle(
                                  fontFamily: "Regular",
                                  fontSize: 14,
                                  color: Colors.red),
                            ),
                            content: Text(
                              "Normal",
                              style:
                                  TextStyle(fontFamily: "Light", fontSize: 14),
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
                              "Tidak normal",
                              style: TextStyle(
                                  fontFamily: "Regular",
                                  fontSize: 14,
                                  color: Colors.red),
                            ),
                            content: Text(
                              "Tidak Normal",
                              style:
                                  TextStyle(fontFamily: "Light", fontSize: 14),
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
                    // ctrlThree.text = hasil.toString();
                  });
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
                      "Hitung",
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
    );
  }
}
