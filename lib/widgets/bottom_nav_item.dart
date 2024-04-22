import 'package:daily_exercises/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  final String svgPic;
  final String title;
  final Function press;
  final bool isSelected;
  
  const BottomNavItem({
    super.key,
    required this.svgPic,
    required this.title,
    required this.press,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
           svgPic,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
