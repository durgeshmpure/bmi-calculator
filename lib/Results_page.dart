import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Roundbox.dart';


class ResultsPage extends StatelessWidget {

  final String bmiresult;
  final String result;
  final String interpretation;

  ResultsPage(this.bmiresult,this.result,this.interpretation);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1D1F33),
          scaffoldBackgroundColor: Color(0xFF1D1F33)
      ),
            home: Scaffold(
              appBar: AppBar(
                title: Text('                              Results'),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Your Results',
                      textAlign:TextAlign.center ,
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 40,
                      ),
                    ),
                  ),
                 Expanded(
                   flex: 7,
                   child: Roundbox(
                     widget1: Column(
                       children: [
                         SizedBox(
                           height:130,
                         ),
                         Text(
                           result,
                           style: TextStyle(
                             fontFamily: 'Ubuntu',
                             fontWeight: FontWeight.bold,
                             fontSize: 30,
                             color: Color(0xFF03C420)
                           ),
                         ),
                         SizedBox(
                           height: 20,
                         ),
                         Text(
                         bmiresult,
                           style: TextStyle(
                             fontSize: 80,
                             fontFamily: 'Ubuntu',
                             fontWeight: FontWeight.bold,

                           ),
                         ),
                         SizedBox(
                           height: 30,
                         ),
                         Text(
                           interpretation,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 25,
                             fontFamily: 'Ubuntu'
                           ),
                         )
                       ],
                     ),
                     colour: activeColor,
                   ),
                 ),
                  TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 25, horizontal: 0)),
                        backgroundColor: MaterialStateProperty.all(Color(0xFFEB1555)),
                      ),
                      child: Text(
                        'ReCalculate',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'Ubuntu'),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }
                  )
                ],
              ),
            ),
          );

  }
}
