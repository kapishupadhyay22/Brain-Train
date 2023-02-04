import 'package:flutter/material.dart';
import 'landingscreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var index = 0;
  var screens = [
    LandingScreen(),
    const Scaffold(
      body: Center(
        child: Text("Schedule"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Marked"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("PYQs"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Notes"),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: index != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) => setState(() {
                index = value;
              }),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(IconData(0xe122, fontFamily: 'MaterialIcons')),
                activeIcon:
                    Icon(IconData(0xf06bb, fontFamily: 'MaterialIcons')),
                label: 'Schedule'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_outline_sharp),
                activeIcon: Icon(Icons.star_outlined),
                label: 'Marked'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined),
                activeIcon: Icon(Icons.assignment),
                label: 'PYQs'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notes),
                activeIcon: Icon(Icons.note_sharp),
                label: 'Notes'),
          ]),
    );
  }
}
