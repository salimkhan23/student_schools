import 'package:flutter/material.dart';

class MDropdownButton extends StatelessWidget {
  const MDropdownButton({
    super.key,
    required this.value,
    required this.dataList,
    required this.onChanged,
    this.hinText,
  });

  final String value;
  final List dataList;
  final void Function(String?)? onChanged;
  final hinText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
          isExpanded: true,
          style: const TextStyle(color: Colors.black),
          hint: hinText,
          value: value,
          items: dataList
              .map((element) => DropdownMenuItem(
                    value: element.toString(),
                    child: Text(element.toString()),
                  ))
              .toList(),
          onChanged: onChanged),
    );
  }
}
