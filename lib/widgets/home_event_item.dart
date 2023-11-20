import 'package:flutter/material.dart';

import '../app/modules/home_screen/models/home_event.dart';
import 'm_text.dart';

class HomeEventItem extends StatelessWidget {
  const HomeEventItem({
    super.key,
    required this.item,
  });

  final HomeEvent item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MText(
                  textValue: item.dateName,
                  textColor: Colors.black,
                ),
                MText(
                  textValue: item.date,
                  textColor: Colors.grey,
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 4,
              color: Colors.orange,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MText(
                  textValue: item.name,
                  textColor: Colors.black,
                ),
                MText(
                  textValue: '⏱ ${item.time}',
                  textColor: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
