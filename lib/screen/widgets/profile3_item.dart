import 'package:flutter/material.dart';

class Profile3Item extends StatelessWidget {
 String imagePath;
Color color;

 Profile3Item({required this.imagePath,required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    Spacer(),

    Expanded(
        child: Column(
      children: [
        Row(
          children: [ Text("30 دقيقة"),
            Checkbox(value: false, onChanged: (v) {}),
            ],
        ),
        Row(
          children: [  Text("60 دقيقة"),
            Checkbox(value: false, onChanged: (v) {}),
           ],
        ),
      ],
    )),
        Expanded(child: Image.asset(imagePath,fit: BoxFit.fill,height: 100,width: 100,color: color,)), ],
    );
  }
}
