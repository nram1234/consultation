import 'package:flutter/material.dart';

import '../utility/AppColor.dart';
import 'widgets/customBut.dart';
import 'widgets/custom_phone_inpout.dart';
import 'widgets/custom_textfiled.dart';

class SignUpMostchar1 extends StatelessWidget {
  const SignUpMostchar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/allbg.png",
                ),
                fit: BoxFit.fill),
            // gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [primaryColor, white])
          ),
          child: Column(
            children: [
              Expanded(
                child: Builder(builder: (context) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 16.0, right: 16, left: 16),
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("انشاء حساب"),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextFiled(text: "اسم المستخدم"),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextFiled(text: " البريد الالكتروني"),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextFiled(text: "كلمة المرور"),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextFiled(text: "تأكيد كلمة المرور"),
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
                         
                              CustomButton(
                                width: size.width,
                                color: primaryColor,
                                hight: 50,
                                onClick: () {},
                                text: "التالي",
                              ), 
                            ],
                          ),
                        )),
                  );
                }),
              ),
              RichText(
                  text: const TextSpan(
                      text: " اذا كان لديك حساب ؟",
                      style: TextStyle(color: black),
                      children: [
                    TextSpan(
                        text: '  سجل دخول  ',
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic))
                  ])),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
