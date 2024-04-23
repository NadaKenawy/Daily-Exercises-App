import 'package:daily_exercises/constants.dart';
import 'package:daily_exercises/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        textTheme: GoogleFonts.acmeTextTheme(Theme.of(context).textTheme.apply(displayColor: kTextColor)),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const HomePage(),
    );
  }
}

