import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';

class CustomTextFiled extends StatelessWidget {
  String text;
  TextEditingController? textEditingController;
int  maxLines;
  CustomTextFiled({required this.text, this.textEditingController,this.maxLines=1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Text(text),
        ),
        Container(padding: EdgeInsets.only(right: 8,left: 8),
          decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              color: white,
              borderRadius: BorderRadius.circular(25)),
          child: TextField(maxLines: maxLines,   decoration:   InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        ),),
        ),
      ],
    );
  }
}
