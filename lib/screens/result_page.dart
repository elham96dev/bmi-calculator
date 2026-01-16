import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        shadowColor: Colors.black,
        backgroundColor: Color(0xFF0A0E21),
        surfaceTintColor: Colors.transparent,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              containerColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'BMI Result',
                    style: kBmiResultTextStyle,
                  ),
                  Text(
                    '18.35',
                    style: kBmiValueTextStyle,
                  ),
                  Text(
                    'MBI Explanation',
                    style: kBmiExplanationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE_CALCULATE',
            ),
          )
        ],
      ),
    );
  }
}
