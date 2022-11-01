import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
 
  final double result;
  final String isMale;
  final int age;
     BmiResult({
       required this.age,
       required this.isMale,
       required this.result,
     });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 40.0,
        title: const Text('BMI RESULT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : $isMale', style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
            Text('Result : ${result.round()}', style: const  TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
            Text('Age : $age', style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}