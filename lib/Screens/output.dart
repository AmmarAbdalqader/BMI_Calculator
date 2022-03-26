import 'package:bmi_calculator_flutter/Components/ReusableContainer.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/Constants.dart';

class Output extends StatelessWidget {
  Output(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: KTitle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableContainer(
              onPress: () {},
              colour: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${resultText.toUpperCase()}',
                    style: kResultStyle,
                  ),
                  Text(
                    '$bmiResult',
                    style: kBmiResult,
                  ),
                  Text(
                    '$interpretation',
                    textAlign: TextAlign.center,
                    style: kResultBody,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kBottomCalc,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
