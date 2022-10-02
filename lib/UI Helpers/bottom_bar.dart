import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../UI/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
    var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(child:  BottomNavigationBar(
          selectedFontSize: 0,
          currentIndex: _index,
          onTap: (value) {
            _index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  size: 60,
                ),
                label: "Home",
                icon: Icon(
                  size: 50,
                  Icons.home,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                  size: 60,
                ),
                label: "Settings",
                icon: Icon(
                  size: 50,
                  Icons.person,
                  color: Colors.black,
                )),
          ]),);
  }
}