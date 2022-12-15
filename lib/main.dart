import 'package:flutter/material.dart';
import 'package:gameon/Screens/groundDetails.dart';
import 'package:gameon/Screens/groundListPage.dart';
import 'package:gameon/Screens/homeScreen.dart';
import 'package:gameon/Screens/otpPage.dart';
import 'package:gameon/Screens/pinPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Gameon',
      routes: {
        '/': (context) => const HomePage(),
        GroundDetails.name: (context) => const GroundDetails(),
        OTPScreen.name: (context) => const OTPScreen(),
        PinPage.name: (context) => const PinPage(),
        GroundListPage.name: (context) => const GroundListPage(),
      },
    );
  }
}
