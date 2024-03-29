import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project/pages/homepage.dart';
import 'package:ui_project/pages/homepage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoMonoTextTheme(Theme.of(context).textTheme)
      )
      ,
      debugShowCheckedModeBanner: false,
      home: HomePagee(),
      routes: {
        '/homepage':(context) => const HomePagee(),
      },
    );
  }
}