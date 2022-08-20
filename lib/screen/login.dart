import 'package:consultation/screen/widgets/custom_textfiled.dart';
import 'package:flutter/material.dart';

import '../utility/AppColor.dart';
import 'widgets/customBut.dart';
import 'widgets/login_user_container.dart';

class LOGIN extends StatelessWidget {
  const LOGIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/images/logo2.png"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LoginUserContainer(
                    width: size.width * .4,
                    color: primaryColor,
                    colorBack: white,
                    imagePath: "assets/images/user.png",
                    text: "مستخدم",
                  ),
                  LoginUserContainer(
                    width: size.width * .4,
                    color: gray,
                    colorBack: gray.withOpacity(.7),
                    imagePath: "assets/images/consultant.png",
                    text: "مستخدم",
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text("الدخول الان وسجل لاحقا",
                  style: TextStyle(color: white, fontSize: 17)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        const Text("تسجيل الدخول "),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFiled(text: "البريد الالكتروني"),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFiled(text: "كلمة المرور"),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                          width: size.width,
                          color: primaryColor,
                          hight: 50,
                          onClick: () {},
                          text: "دخول",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("هل  نسيت كلمة المرور؟"),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    )),
              ),
              RichText(
                  text: const TextSpan(
                      text: " اذا كنت مستخدم جديد ؟ ",
                      style: TextStyle(color: black),
                      children: [
                    TextSpan(
                        text: 'انشأ حساب',
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
