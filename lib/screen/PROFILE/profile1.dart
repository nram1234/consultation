
import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import '../widgets/customBut.dart';
import '../widgets/custom_phone_inpout.dart';
import '../widgets/custom_textfiled.dart';

class PROFILE1 extends StatelessWidget {
  const PROFILE1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Padding(
      padding:       const EdgeInsets.only(top: 20.0, right: 20, left: 20),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [     Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/p.png",
                )),
          ),
        ),

          CustomTextFiled(text: "اسم المستخدم"),
          const SizedBox(
            height: 10,
          ),
          Container(width: size.width,height: 50,padding: EdgeInsets.only(right: 8,left: 8),
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                color: white,
                borderRadius: BorderRadius.circular(25)),
            child: Align(alignment: Alignment.centerRight,child: Text( "MO@gmail.com",textAlign: TextAlign.end,)),
          ),
          Text( "لتغيير البريد الراء التواصل معنا",textAlign: TextAlign.start),
          const SizedBox(
            height: 10,
          ),
          CustomPhoneInput(text: "رقم الجوال"),
          const SizedBox(
            height: 10,
          ),
          CustomPhoneInput(text: " 2 رقم الجوال"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("النوع"),
                  Container(
                    height: 50,
                    width: size.width * .41,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: primaryColor),
                        color: white,
                        borderRadius:
                        BorderRadius.circular(25)),
                    child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [             Container(
                          width: size.width * .2,
                          height: 50,
                          child:
                          Center(child: Text("انثى")),
                          decoration: BoxDecoration(
                            // border: Border.all(
                            //     color: primaryColor),
                            color: white,
                            borderRadius:
                            BorderRadius.circular(25),
                          ),
                        ),


                          Container(
                            width: size.width * .2,
                            height: 50,
                            child:
                            Center(child: Text("ذكر")),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                              BorderRadius.circular(25),
                            ),
                          ),


                        ]),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("سنة الميلاد"),
                  Container(
                    width: size.width * .4,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: primaryColor),
                        color: white,
                        borderRadius:
                        BorderRadius.circular(25)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15,
                            bottom: 11,
                            top: 11,
                            right: 15),
                      ),
                    ),
                  )
                ],
              ),
                 ],
          ),
          const SizedBox(
            height: 10,
          ),




          Text("تغيير كلمة المرور",style: TextStyle(color: Colors.red),),

        const SizedBox(
        height: 10,
      )







       ,   Center(
         child: CustomButton(
              width: size.width*.7,
              color: primaryColor,
              hight: 50,
              onClick: () {},
              text: "تعديل",
            ),
       ),



          const SizedBox(
            height: 10,
          )







        ],),
      ),
    );
  }
}
