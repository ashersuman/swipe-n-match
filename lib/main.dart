import 'package:flutter/material.dart';
import 'package:swipe_n_match/screens/onboarding/welcome/welcome.dart';
import 'package:swipe_n_match/theme/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe-N-Watch',
      theme: ThemeData(
        fontFamily: kFontFamily,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}
