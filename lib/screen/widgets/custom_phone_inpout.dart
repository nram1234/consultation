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
        Container(
          padding: EdgeInsets.only(
            right: 8,left: 8
          ),
          decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              Container(
              //  width: 50,
                height: 50,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                // child: DropdownButton(items: items, onChanged: onChanged),
            child: DropdownButton<String>(
      value: '02',
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: SizedBox(),
      onChanged: (String? newValue) {
       
      },
      items: <String>['02', '03', '04', '05']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),  ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
