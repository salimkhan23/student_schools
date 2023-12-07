import 'package:flutter/material.dart';

import '../../../../widgets/m_text.dart';

class MAttenName extends StatelessWidget {
  const MAttenName({
    super.key,
    required this.roll,
    required this.name,
    required this.onChanged,
    this.isPresent = false,
    this.isAllPresent,
  });
  final void Function(bool?)? onChanged;
  final String roll;
  final String name;
  final bool? isPresent;
  final bool? isAllPresent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MText(textValue: roll),
          MText(textValue: name),
          Checkbox(
            value: isAllPresent ?? isPresent,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
