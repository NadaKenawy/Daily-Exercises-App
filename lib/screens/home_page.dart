import 'package:daily_exercises/widgets/bottom_nav_bar.dart';
import 'package:daily_exercises/widgets/category_card.dart';
import 'package:daily_exercises/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 250, 208, 186),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 250, 202, 175),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning \nNada",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Center(
                    child: SearchField(
                      width: size.width * .88,
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .88,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          svgPic: 'assets/icons/Hamburger.svg',
                          title: 'Diet Recommendations',
                          press: () {},
                        ),
                        CategoryCard(
                          svgPic: 'assets/icons/Excrecises.svg',
                          title: 'Kegel Exercieses',
                          press: () {},
                        ),
                        CategoryCard(
                          svgPic: 'assets/icons/Meditation.svg',
                          title: 'Meditation',
                          press: () {},
                        ),
                        CategoryCard(
                          svgPic: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
