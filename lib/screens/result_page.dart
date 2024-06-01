import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/buttom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bmi calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
                child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(bmiResult, style: kBMITextStyle),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      interpretation,
                      style: kBodyStyle,
                    ),
                  )
                ],
              ),
              onPress: () {},
            )),
            BottomButton(
                onTap: () {
                  CalculatorBrain calc =
                  CalculatorBrain(weight: 0, height: 0);
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => ResultPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation())));
                },
                buttonTitle: 'RE-Calculate BMI')
          ],
        ));
  }
}
