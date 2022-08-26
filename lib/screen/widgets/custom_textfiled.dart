import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';

class CustomTextFiled extends StatelessWidget {
  String text;
  TextEditingController? textEditingController;
  int maxLines;
 bool obscureText;
  String? Function(String?)? validat;
  CustomTextFiled(
      {required this.text, this.textEditingController, this.maxLines = 1,this.obscureText=false,this.validat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Text(text),
        ),
        Container(
          padding: const EdgeInsets.only(right: 8, left: 8),
          decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              color: white,
              borderRadius: BorderRadius.circular(25)),
          child: TextFormField(obscureText:obscureText ,controller: textEditingController,
            maxLines: maxLines,validator: validat,
            decoration:   const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 4, top: 4, right: 15),
            ),
          ),
        ),
      ],
    );
  }
}
