

import 'package:flutter/material.dart';

import '../utility/AppColor.dart';
import 'widgets/customBut.dart';

class Reviews2 extends StatelessWidget {
  const Reviews2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: SizedBox(width: size.width,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/review.png",
                height: size.height * .3,
              ),
              Text(
                "شكرا لك",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              Text(
                "تم تسجيل بياناتك بنجاح",
                style: TextStyle(
                    fontSize: 17,

                    color: primaryColor),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60.0,left: 60,top: 0,bottom: 20),
                child: Text(
                  "سيتم مراجعة الطلب وارسال بريد لتأكيد الاشتراك",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              CustomButton(width: size.width*.5,color: primaryColor,hight:50 ,text: "اغلاق",onClick: (){})  ]),
          ),
        ));
  }
}
