import 'package:daily_exercises/constants.dart';
import 'package:daily_exercises/widgets/bottom_nav_bar.dart';
import 'package:daily_exercises/widgets/search_field.dart';
import 'package:daily_exercises/widgets/session_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(children: [
        Container(
          height: size.height * .45,
          decoration: const BoxDecoration(
            color: kBlueLightColor,
            image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  "assets/images/meditation_bg.png",
                ),
                fit: BoxFit.fitWidth),
          ),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .05,
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                const Text(
                  "3-10 MIN Course",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * .6,
                  child: const Text(
                      "Live Happier And Healther By Learning The Fundamentais Of Meditation And Minfuless"),
                ),
                SearchField(width: size.width * .55),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    SessionCard(
                      sessionNum: 01,
                      isDone: true,
                      press: () {},
                    ),
                    SessionCard(
                      sessionNum: 02,
                      isDone: false,
                      press: () {},
                    ),
                    SessionCard(
                      sessionNum: 03,
                      isDone: false,
                      press: () {},
                    ),
                    SessionCard(
                      sessionNum: 04,
                      isDone: false,
                      press: () {},
                    ),
                    SessionCard(
                      sessionNum: 05,
                      isDone: false,
                      press: () {},
                    ),
                    SessionCard(
                      sessionNum: 06,
                      isDone: false,
                      press: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Meditation",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(10),
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 25,
                          spreadRadius: -13,
                          color: kShadowColor,
                        ),
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/Meditation_women_small.svg"),
                      const SizedBox(width: 20),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Basic 2",
                              style: Theme.of(context).textTheme.titleSmall),
                          const Text("Start Your Deepen You Practice")
                        ],
                      )),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset("assets/icons/Lock.svg"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ))
      ]),
    );
  }
}
