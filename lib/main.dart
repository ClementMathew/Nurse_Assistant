import 'package:flutter/material.dart';
import 'package:nurse_assistant/Nurse/HomePage.dart';

import 'Welcome Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nurse App',
      home: //SplashScreen(),
      NurseHome()
    );
  }
}
