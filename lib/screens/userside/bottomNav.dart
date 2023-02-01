import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) => setState(() {
                index = value;
              }),
          type: BottomNavigationBarType.fixed,
          items: const [
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
                label: 'Schedule'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notes),
                activeIcon: Icon(Icons.note_sharp),
                label: 'Schedule'),
          ]),
    );
  }
}
