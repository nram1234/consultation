import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import '../widgets/customBut.dart';
import '../widgets/profile3_item.dart';

class Profile3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 20,
          ),
          Profile3Item(
            imagePath: "assets/images/chat.png",color: gray,
          ),
          Profile3Item(
            imagePath: "assets/images/call.png",color: gray,
          ),
          Profile3Item(
            imagePath: "assets/images/vd.png",color: gray,
          )
          ,   Center(
            child: CustomButton(
              width: size.width*.7,
              color: primaryColor,
              hight: 50,
              onClick: () {},
              text: "حفظ",
            ),
          ),
        ],
      ),
    );
  }
}
