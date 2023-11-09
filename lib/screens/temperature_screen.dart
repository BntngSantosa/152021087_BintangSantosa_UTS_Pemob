import 'package:flutter/material.dart';
import 'package:project/screens/mathematics_screen.dart';

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({super.key});

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  TextEditingController ctrlOne = new TextEditingController();
  TextEditingController ctrlTwo = new TextEditingController();
  TextEditingController ctrlThree = new TextEditingController();

  String selectedKonversi = 'Celsius ke Fahrenheit';
  List<String> konversiOptions = [
    'Celsius ke Fahrenheit',
    'Fahrenheit ke Celsius'
  ];

  double weight = 0;
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
          "Temperature conversion",
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
                  hintText: "Masukan Suhu",
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
                  hintText: "",
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

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DropdownButton<String>(
                      value: selectedKonversi,
                      items: konversiOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedKonversi = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // Button tambah
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedKonversi == 'Celsius ke Fahrenheit') {
                      hasil = (double.parse(ctrlOne.text) * 9 / 5) + 32;
                    } else {
                      hasil = (double.parse(ctrlOne.text) - 32) * 5 / 9;
                    }
                    ctrlTwo.text = hasil.toString();
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
