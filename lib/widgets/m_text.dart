import 'package:flutter/material.dart';

class MText extends StatelessWidget {
  const MText({super.key, required this.textValue});

  final String textValue;

  @override
  Widget build(BuildContext context) {
    return Text(textValue, style: TextStyle(color: Colors.white));
  }
}
