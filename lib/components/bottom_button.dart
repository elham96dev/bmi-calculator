import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
  });

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        color: kBottomContainerColor,
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: kCalculateButtonTextStyle,
        ),
      ),
    );
  }
}
