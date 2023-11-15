import 'package:flutter/material.dart';

import '../m_image_path.dart';
import 'm_text.dart';

class MAppHeader extends StatelessWidget {
  const MAppHeader({
    super.key,
    this.paddin = 20,
    this.color = Colors.blue,
    this.redius = 10,
    this.imageSize = 100,
    this.imageShape = BoxShape.circle,
    this.imageRadius,
  });

  final double paddin;
  final double redius;
  final double imageSize;
  final BoxShape imageShape;
  final BorderRadiusGeometry? imageRadius;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddin),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(redius),
        child: Container(
          height: 150,
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    // CircleAvatar(
                    //   backgroundImage: AssetImage(MImagesPath.salim),
                    //   maxRadius: 50,
                    // ),

                    Container(
                      height: 110,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: imageRadius,
                          shape: imageShape,
                          image: DecorationImage(
                              image: AssetImage(MImagesPath.salim))),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MText(textValue: 'SALIM KHAN'),
                        MText(textValue: 'Student : Univers UT'),
                        MText(textValue: 'ID : 465517'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
