import 'package:flutter/material.dart';
import 'input_page.dart';

void main(){
  runApp(bmiApp());
}

class bmiApp extends StatelessWidget {
  const bmiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D1F33),
        scaffoldBackgroundColor: Color(0xFF1D1F33),
      ),
      home: Scaffold(
        body: Inputpage(),
        appBar: AppBar(
          title: Text(
            '                            BMI Calculator',
            style: TextStyle(
              fontFamily: 'Ubuntu'
            ),
          ),
        ),
      ),
    );
  }
}



