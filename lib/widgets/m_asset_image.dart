import 'package:flutter/material.dart';

class MAssetImage extends StatelessWidget {
  const MAssetImage({
    super.key,
    required this.path,
    this.size = 150,
    this.onTap,
  });
  final String path;
  final double size;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size,
            height: size,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(path))),
          ),
        ),
      ),
    );
  }
}
