import 'package:flutter/material.dart';

class LoginUserContainer extends StatelessWidget {
  Color colorBack;
  String imagePath;
  String text;
  Color color;
  double width;

  LoginUserContainer(
      {required this.colorBack,
      required this.imagePath,
      required this.text,
      required this.color,
        required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      padding: EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        color: colorBack,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              image: DecorationImage(image: AssetImage(imagePath))),
        ),
        Text(
          text,
          style: TextStyle(color: color),
        )
      ]),
    );
  }
}
