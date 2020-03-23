import 'package:flutter/material.dart';
import 'columnIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable.dart';
import 'constants.dart';
import 'Result_Page.dart';
import 'downButtonPags.dart';
import 'roundIconButton.dart';
import 'calculator_brain.dart';

//Enumeration Gander for call in If statement
enum Gander { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Vareabel for (condition expression)
  Gander selectGander;
  int hight = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectGander = Gander.male;
                          });
                        },
                        cardChild: columIcon(
                          icon: FontAwesomeIcons.male,
                          iconTitle: 'MALE',
                        ),
                        colour: selectGander == Gander.male
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectGander = Gander.female;
                          });
                        },
                        cardChild: columIcon(
                          icon: FontAwesomeIcons.female,
                          iconTitle: 'FEMALE',
                        ),
                        colour: selectGander == Gander.female
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "HEIGHT",
                        style: textLableStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            hight.toString(),
                            style: textNumberStyle,
                          ),
                          Text(
                            'CM',
                            style: textLableStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color(0xffffffff),
                          inactiveTickMarkColor: Color(0xff8A8A8A),
                          thumbColor: Color(0xffffffff),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10),
                          overlayColor: Color(0x29ffffff),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20),
                        ),
                        child: Slider(
                          value: hight.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              hight = newValue.round();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: textLableStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: textNumberStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: textLableStyle,
                            ),
                            Text(
                              age.toString(),
                              style: textNumberStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DownButtun(
                onTap: () {
                  CalculatorBrain calc =
                      CalculatorBrain(weight: weight, height: hight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmiResult: calc.calculateBMI(),
                              resultText: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                            )),
                  );
                },
                title: 'CALCULATE',
              )
            ]));
  }
}
