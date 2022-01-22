import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'GenderIcon.dart';
import 'Roundbox.dart';
import 'constants.dart';
import 'package:bmi_calculator/Results_page.dart';
import 'CalculatorBrain.dart';

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Color malecardcolor = activeColor;
  Color femalecardcolor = activeColor;

  Gender? selectedgender;
  int height = 180;
  int weight = 20;
  int age = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: Roundbox(
                  ontap: (){
                    setState(() {
                      selectedgender=Gender.male;
                    });
                  },
                  colour: selectedgender == Gender.male
                      ? malecardcolor = inactiveColor
                      : malecardcolor = activeColor,
                  widget1: GenderIcon(FontAwesomeIcons.venus, 'MALE'),
                ),
              ),
              Expanded(
                  child: Roundbox(
                       ontap: (){
                         setState(() {
                           selectedgender=Gender.female;
                         });
                       },
                       colour:selectedgender == Gender.female
                          ? femalecardcolor = inactiveColor
                          : femalecardcolor = activeColor,
                      widget1: GenderIcon(FontAwesomeIcons.mars, 'FEMALE'))),
            ]),
          ),
          Expanded(
            child: Roundbox(
                colour: activeColor,
                widget1: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: heightTextStyle,
                    ),
                    Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            height.toString(),
                            style: heightNumberTextStyle
                          ),
                          Text(
                            'CM',
                            style: cmTextStyle,
                          )
                        ]),
                    SliderTheme(
                      data: slidertheme,
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: Roundbox(
                    colour: activeColor,
                    widget1: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: weightTextStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              weight.toString(),
                              style: weightnumberstyle,
                            ),
                            Text(
                              'KG',
                              style: kgTextStyle,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 100) {
                                    if (weight >= 0) {
                                      weight++;
                                    }
                                  }
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 30,
                              ),
                              constraints:
                                  BoxConstraints(minWidth: 56, minHeight: 56),
                              elevation: 10,
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              constraints:
                                  BoxConstraints(minWidth: 56, minHeight: 56),
                              elevation: 10,
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              Expanded(
                child: Roundbox(
                    colour: activeColor,
                    widget1: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 26,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Yrs')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (age < 100) {
                                    age++;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 30,
                              ),
                              constraints:
                                  BoxConstraints(minWidth: 56, minHeight: 56),
                              elevation: 10,
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 1) {
                                    age--;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              constraints:
                                  BoxConstraints(minWidth: 56, minHeight: 56),
                              elevation: 10,
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        )
                      ],
                    )),
              )
            ]),
          ),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 25, horizontal: 0)),
              backgroundColor: MaterialStateProperty.all(Color(0xFFEB1555)),
            ),
            child: Text(
              'Calculate',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Ubuntu'),
            ),
            onPressed: () {
              CalculatorBrain calc = CalculatorBrain(weight,height);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultsPage(calc.CalculateBMI(),calc.getresult(),calc.interpretation())),
              );
            }
          )
        ],
      ),
    );
  }
}
