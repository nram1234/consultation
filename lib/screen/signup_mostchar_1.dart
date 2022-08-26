import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../cubit/signup_cubit/signup_cubit.dart';
import '../utility/AppColor.dart';
import '../utility/router.dart';
import 'signup_mostchar_2.dart';
import 'widgets/customBut.dart';
import 'widgets/custom_phone_inpout.dart';
import 'widgets/custom_textfiled.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignUpMostchar1 extends StatelessWidget {
  const SignUpMostchar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignupCubit cubit = SignupCubit.get(context);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: BlocConsumer<SignupCubit, SignupState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {

    return Scaffold(
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
          child: Form(key:cubit.formKey,
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
                                CustomTextFiled(text: "اسم المستخدم",textEditingController: cubit.textEditingControllerName,validat: cubit.validat),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomTextFiled(text: " البريد الالكتروني",textEditingController: cubit.textEditingControllerEmail,validat: cubit.validat),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomTextFiled(text: "كلمة المرور",textEditingController: cubit.textEditingControllerPassword,validat: cubit.validat),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomTextFiled(text: "تأكيد كلمة المرور",textEditingController: cubit.textEditingControllerPassword_confirmation,validat: cubit.validat),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomPhoneInput(text: "رقم الجوال",textEditingController: cubit.textEditingControllerphone,validat: cubit.validat),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomPhoneInput(text: " 2 رقم الجوال",textEditingController: cubit.textEditingControlleradditional_phone,validat: cubit.validat),
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
                                              children: [             InkWell(onTap: (){
                                                cubit.updateisMal(v: false);
                                              },
                                                child: Container(
                                                    width: size.width * .2,
                                                    height: 50,
                                                    child:
                                                        Center(child: Text("انثى")),
                                                    decoration: BoxDecoration(
                                                      // border: Border.all(
                                                      //     color: primaryColor),
                                                      color: cubit.isM?white: primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(25),
                                                    ),
                                                  ),
                                              ),


                                                InkWell(onTap: (){
                                                  cubit.updateisMal(v: true);
                                                },
                                                  child: Container(
                                                    width: size.width * .2,
                                                    height: 50,
                                                    child:
                                                        Center(child: Text("ذكر")),
                                            decoration: BoxDecoration(
                                                      color:cubit.isM? primaryColor:white,
                                                      borderRadius:
                                                          BorderRadius.circular(25),
                                                    ),
                                                  ),
                                                ),


                                              ]),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("سنة الميلاد",),
                                        Container(
                                          width: size.width * .4,
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: primaryColor),
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: TextFormField(controller:   cubit.textEditingControllerbirth_of_year,validator: cubit.validat,
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
                                  onClick: () {


                                    if(cubit.formKey.currentState!.validate()){

                                      cubit.insertexperienceY();
                                      cubit.YOfexperience=0;
                                      MagicRouter.navigateTo(SignUpMostchar2());
                                    }

                                  },
                                  text: "التالي",
                                ),
                              ],
                            ),
                          )),
                    );
                  }),
                ),
                RichText(
                    text:   TextSpan(
                        text: " اذا كان لديك حساب ؟",
                        style: TextStyle(color: black),
                        children: [
                      TextSpan(
                          text: '  سجل دخول  ',
                        recognizer:   TapGestureRecognizer()..onTap = () {

                          MagicRouter.pop();
                        },
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
  },
),
    );
  }
}
