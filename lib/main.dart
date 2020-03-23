import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0C0F1E),
          scaffoldBackgroundColor: Color(0XFF0C0F1E),
          textTheme: TextTheme(
              body1: TextStyle(
                  color: Colors.white
              ))
      ) ,
      home:InputPage(),
    );
  }
}