import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';

class CustomPhoneInput extends StatelessWidget {
   String text;
  TextEditingController? textEditingController;
  CustomPhoneInput({required this.text, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
           Align(
          alignment: Alignment.bottomRight,
          child: Text(text),
        ),
        Container(padding: EdgeInsets.only(right: 8,),
          decoration:
              BoxDecoration(border: Border.all(color: primaryColor),  borderRadius: BorderRadius.circular(25)),
  child:    Row(children: [Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft:  Radius.circular(25) )),
 // child: DropdownButton(items: items, onChanged: onChanged),
          
          
          
          ),Expanded(child: TextField(decoration:   InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        ),),),],),  ),
      ],
    );
  }
}
