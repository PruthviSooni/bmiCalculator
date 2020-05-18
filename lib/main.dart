import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/input-page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF121212),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF121212),
        scaffoldBackgroundColor: Color(0xff121212),
      ),
      home: InputPage(),
    );
  }
}
