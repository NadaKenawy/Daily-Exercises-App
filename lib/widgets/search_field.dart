import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchField extends StatelessWidget {
  final double width;
  const SearchField({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: TextField(
        cursorColor: const Color.fromARGB(255, 110, 102, 102),
        decoration: InputDecoration(
          prefix: Padding(
            padding: const EdgeInsets.only(right: 10), // Adjust as needed
            child: SvgPicture.asset(
              "assets/icons/search.svg",
            ),
          ),
          labelStyle: TextStyle(
              color: const Color.fromRGBO(117, 117, 117, 1).withOpacity(.9)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              width: 2,
            ),
          ),
          labelText: "  Search",
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        ),
      ),
    );
  }
}
