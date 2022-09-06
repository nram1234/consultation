import 'package:consultation/screen/widgets/custom_textfiled.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../cubit/login_cubit/login_cubit.dart';
import '../utility/AppColor.dart';
import '../utility/router.dart';
import 'main_page/main_page.dart';
import 'main_page/main_screen.dart';
import 'signup_mostchar_1.dart';
import 'widgets/customBut.dart';
import 'widgets/login_user_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LOGIN extends StatelessWidget {
  const LOGIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = LoginCubit.get(context);
    Size size = MediaQuery
        .of(context)
        .size;
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {

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
                      InkWell(onTap: (){
                        cubit.changeIsUser(user: true);
                      },
                        child: LoginUserContainer(
                          width: size.width * .4,
                          color: cubit.isUser?primaryColor: gray,
                          colorBack: cubit.isUser?white: gray.withOpacity(.7),
                          imagePath: "assets/images/user.png",
                          text: "مستخدم",
                        ),
                      ),
                      InkWell(onTap: (){
                        cubit.changeIsUser(user: false);
                      },
                        child: LoginUserContainer(
                          width: size.width * .4,


                          color: cubit.isUser?gray:primaryColor,
                          colorBack: cubit.isUser?gray.withOpacity(.7):white ,
                          imagePath:  "assets/images/user.png",
                          text: "مستشار",
                        ),
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
                            color: white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            const Text("تسجيل الدخول "),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFiled(text: "البريد الالكتروني",textEditingController: cubit.emailController),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFiled(text: "كلمة المرور",obscureText: true,textEditingController:  cubit.passwordController),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                       state is LoginIsLogin?Center(child: CircularProgressIndicator(),):     CustomButton(
                              width: size.width,
                              color: primaryColor,
                              hight: 50,
                              onClick: () {
                                MagicRouter.navigateTo(MainPage());
//cubit.logInRequest( context: context);

                              },
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
                      text:   TextSpan(
                          text: " اذا كنت مستخدم جديد ؟ ",
                          style: TextStyle(color: black),
                          children: [
                            TextSpan(  recognizer: new TapGestureRecognizer()..onTap = () {

                              MagicRouter.navigateTo(SignUpMostchar1());
        }
                            ,
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
      },
    );
  }
}
