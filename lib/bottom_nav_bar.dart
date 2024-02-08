import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        child: GNav(
          selectedIndex: _selectedTab,
          onTabChange: _changeTab,
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          iconSize: 30,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: const Color.fromARGB(255, 231, 209, 188),
          color: Colors.black,
          tabs: [
            _buildMenuButton(icon: Icons.home),
            _buildMenuButton(icon: Icons.search),
            _buildMenuButton(icon: Icons.person),
            _buildMenuButton(icon: Icons.notifications),
          ],
        ),
      ),
    );
  }

  GButton _buildMenuButton({required IconData icon}) {
    return GButton(
      icon: icon,
      iconColor: const Color.fromARGB(255, 111, 66, 55),
      iconActiveColor: Colors.white,
    );
  }
}
