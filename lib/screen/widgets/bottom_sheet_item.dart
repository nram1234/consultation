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
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(imagePath,)),
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
