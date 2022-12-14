import 'package:flutter/material.dart';
import 'package:gameon/Screens/groundDetails.dart';
import 'package:gameon/Screens/groundListPage.dart';
import 'package:gameon/Screens/homeScreen.dart';
import 'package:gameon/Screens/otpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gameon',
      routes: {
        '/': (context) => const HomePage(),
        GroundDetails.name: (context) => const GroundDetails(),
        OTPScreen.name: (context) => const OTPScreen(),
        GroundListPage.name: (context) => const GroundListPage(),
      },
    );
  }
}
