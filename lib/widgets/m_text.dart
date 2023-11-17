import 'package:flutter/material.dart';

class MText extends StatelessWidget {
  const MText({
    super.key,
    required this.textValue,
    this.textColor = Colors.white,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
  });

  final String textValue;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(textValue,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
