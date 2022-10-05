import 'package:buddha/UI%20Helpers/constants.dart';
import 'package:buddha/UI/own_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../UI/home_screen.dart';

class BottomBar extends StatefulWidget {
 int selectedIndex;

  BottomBar({super.key, required this.selectedIndex});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _index = 0;
  List _pagesToNavigateTo = [HomeScreen(), OwnProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenlHeight / 14,
      child: BottomNavigationBar(
          selectedFontSize: 0,
          currentIndex: widget.selectedIndex,
          onTap: (value) {
            _index = value;
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => _pagesToNavigateTo[value],
                ),
                (route) => false);
            setState(() {});
          },
          items: const [
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
          ]),
    );
  }
}
