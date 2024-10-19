import 'package:flutter/material.dart';

import '../../features/profile/presentation/pages/profile_screen.dart';
import '../managers/color_manager.dart';

class BottomNavigationApp extends StatefulWidget {
  const BottomNavigationApp({super.key});

  @override
  State<BottomNavigationApp> createState() => _BottomNavigationAppState();
}
List<BottomNavigationBarItem> items = const [
  BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorite"),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
  BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
];
List<Widget> screens=[
  const ProfileScreen(),

];

int cindex = 0;
class _BottomNavigationAppState extends State<BottomNavigationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)), // Rounded corners
        child: BottomNavigationBar(
          items: items,
          backgroundColor: ColorManager.darkerBlue, // Background color for BottomNavigationBar
          currentIndex: cindex,
          selectedItemColor: ColorManager.primaryColor,
          unselectedItemColor: ColorManager.lighterGrey,
          onTap: (index) {
            setState(() {
              cindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0, // Remove elevation to avoid shadow conflict
        ),
      ),
      body: screens[cindex],
    );
  }
}
