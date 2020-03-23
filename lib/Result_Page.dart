import 'package:flutter/material.dart';
import 'constants.dart';
import 'Reusable.dart';
import 'downButtonPags.dart';

class ResultPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        backgroundColor: Color(0xff0C0F1E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SafeArea(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Your Result',
                    style: resultTitleText,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: weightStatusText,
                      ),
                      Text(
                        bmiResult,
                        style: textBMIResult,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: textReult,
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
              child: DownButtun(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 'RE-CALCULATE',
              ),
            )
          ],
        ));
  }
}
