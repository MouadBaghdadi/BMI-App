import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bmiapp/modules/bmi/bmiCalculator.dart';
import 'package:bmiapp/modules/bmi_result/bmiresulte.dart';


class BmiScreen extends StatefulWidget {
  
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double val=100.0;
  int vall=100;
  int age=0;
  var weight=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 120.0,
        title: const Text('BMI CALCULATOR'),
         ),
      body:  Column(
          children: [
           Expanded(
             child: Row(
                 children: [
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             isMale=true;
                           });
                         },
                         child: Container(
                           decoration: BoxDecoration(
                             color: isMale ? Colors.blue : Colors.grey,
                             borderRadius: BorderRadius.circular(10)
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: const [
                              Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 90.0,
                              width: 90.0,
                              color: Colors.white,
                              ),
                              Text('MALE', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                           ],
                                    ),
                         ),
                       ),
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: GestureDetector(
                         onTap: (){setState(() {
                           
                         });
                           isMale=false;
                         },
                         child: Container(
                           decoration: BoxDecoration(
                             color: !isMale ? Colors.pink : Colors.grey,
                             borderRadius: BorderRadius.circular(10)
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: const [
                               Image(
                                 image: AssetImage('assets/images/female.png'),
                                 width: 90.0,
                                 height: 90.0,
                                 color: Colors.white,
                                 //fit: BoxFit.contain,
                                 ),
                               Text('FEMALE', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                           ],
                                    ),
                         ),
                       ),
                     ),
                   ),
              ],
             ),
           ),       
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5.0),
                 color: Colors.grey,
               ),
               padding: const EdgeInsets.only(
                 top: 20,
               ),
               margin: const EdgeInsets.only(
                 left: 20.0,
                 right: 20.0,
                 bottom: 10.0
               ),
               child: Column(
                 children:  [
                   const Text('HEIGHT', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                   SizedBox(height: 10.0,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children:  [
                       Text('$vall', style: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                       const Text('cm',style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold),)
                     ],
                   ),
                   Slider(
                     value: val,
                     max: 220.0,
                     min: 80.0,
                     onChanged: (value){ setState(() {
                       val = value;
                       vall = val.round();
                     });
                     },)               
                 ],
               ),
             ),
           ),
           Expanded(
             child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                      bottom: 10.0
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('AGE', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('$age', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              }, 
                              heroTag: 'age+',
                              child: Text('+', style: TextStyle(fontSize: 25),),
                              elevation: 0.0,
                              ),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              }, 
                              heroTag: 'age-',
                              child: Text('-', style: TextStyle(fontSize: 25),),
                              elevation: 0.0,
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 40.0,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                      right: 20.0,
                      top: 10.0,
                      bottom: 10.0
                    ),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('WEIGHT', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('$weight', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }, 
                              heroTag: 'weight+',
                              child: Text('+', style: TextStyle(fontSize: 25),),
                              elevation: 0.0,
                              ),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                              mini: true,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              }, 
                              heroTag: 'weight-',
                              child: Text('-', style: TextStyle(fontSize: 25),),
                              elevation: 0.0,
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
             ),
           ),
           Container(
             width: double.infinity,
             color: Colors.blue,
             height: 50.0,
             child: MaterialButton(
              onPressed: (){
               var result=weight/ pow(val/100, 2);
               print(result.round());
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => BmiResult(
                   age: age,
                   isMale: isMale? 'Male' : 'Female',
                   result: result,
                 ),
                 ),
                 );
              },
              child: const Text('CALCULATE', style: TextStyle(color: Colors.white)),)),
        ],),
        
    );
  }
}