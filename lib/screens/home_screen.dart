import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project/screens/dashboard_screen.dart';
import 'package:project/screens/login_screen.dart';
import 'package:project/screens/mathematics_screen.dart';
import 'package:project/screens/iot_screen.dart';
import 'package:project/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardScreen(),
    MathematicsScreen(),
    IOTScreen(),
    ProfileScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFFFFF),
        shadowColor: Colors.transparent,
        title: Text(
          "Hey, Bintang!",
          style: TextStyle(
            fontFamily: 'Semi Bold',
            fontSize: 14,
            color: Color(0xFF0F0F10),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout_outlined,
              color: Color(0xFF0F0F10),
            ), // Ganti dengan ikon yang sesuai
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
          ),
        ],
      ),

      // Body
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),

      // Bottom NavigationBar
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: GNav(
            backgroundColor: Colors.white,
            tabBackgroundColor: Color(0xFF0F0F10),
            padding: EdgeInsets.all(16),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.interests_rounded,
                text: "Dashboard",
                textStyle: TextStyle(
                    fontFamily: 'Regular', fontSize: 12, color: Colors.white),
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.calculate_rounded,
                text: "Mathematics",
                textStyle: TextStyle(
                    fontFamily: 'Regular', fontSize: 12, color: Colors.white),
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.sensors_rounded,
                text: "IOT",
                textStyle: TextStyle(
                    fontFamily: 'Regular', fontSize: 12, color: Colors.white),
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.person_rounded,
                text: "Profile",
                textStyle: TextStyle(
                    fontFamily: 'Regular', fontSize: 12, color: Colors.white),
                iconActiveColor: Colors.white,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
          ),
        ),
      ),
    );
  }
}
