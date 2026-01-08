import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    containerColor: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(containerColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(containerColor: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(containerColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(containerColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
    );
  }
}
