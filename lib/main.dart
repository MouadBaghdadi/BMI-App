import 'package:flutter/material.dart';
import 'modules/bmi_result/bmiresulte.dart';

import 'modules/bmi/BmiCalculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BmiScreen(),
    );
  }
}