import 'package:flutter/material.dart';

class ItemMenuMostchar extends StatelessWidget {
  String imagePath;
  String text;
  Color color;

  ItemMenuMostchar(
      {required this.imagePath, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [Text(text,style: TextStyle(color: color)),SizedBox(width: 10,),Image.asset(imagePath,width: 20,height: 20),],
    );
  }
}
