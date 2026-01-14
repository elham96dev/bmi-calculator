import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.containerColor,
    required this.cardChild,
    required this.onPressed,
  });
  final Color containerColor;
  final Widget cardChild;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
