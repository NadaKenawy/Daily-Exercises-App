import 'package:daily_exercises/screens/details_screen.dart';
import 'package:daily_exercises/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isSelectedToday = false;
  bool isSelectedAllExercises = false;
  bool isSelectedSettings = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            svgPic: 'assets/icons/calendar.svg',
            title: 'Today',
            press: () {
              setState(() {
                isSelectedToday = true;
                isSelectedAllExercises = false;
                isSelectedSettings = false;
              });
            },
            isSelected: isSelectedToday,
          ),
          BottomNavItem(
            svgPic: 'assets/icons/gym.svg',
            title: 'All Exercises',
            press: () {
              setState(() {
                isSelectedToday = false;
                isSelectedAllExercises = true;
                isSelectedSettings = false;
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const DetailsScreen();
                  },
                ));
              });
            },
            isSelected: isSelectedAllExercises,
          ),
          BottomNavItem(
            svgPic: 'assets/icons/Settings.svg',
            title: 'Settings',
            press: () {
              setState(() {
                isSelectedToday = false;
                isSelectedAllExercises = false;
                isSelectedSettings = true;
              });
            },
            isSelected: isSelectedSettings,
          ),
        ],
      ),
    );
  }
}
