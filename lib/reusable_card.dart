import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.containerColor,
  });
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
