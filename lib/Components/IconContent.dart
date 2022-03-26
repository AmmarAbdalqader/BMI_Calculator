import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/Constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.label, required this.icon});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
