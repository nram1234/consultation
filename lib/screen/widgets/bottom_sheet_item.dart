import 'package:flutter/material.dart';

class BottomSheetItem extends StatelessWidget {
  String imagePath;
  String text;

  BottomSheetItem({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(imagePath)),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(text)
      ],
    );
  }
}
