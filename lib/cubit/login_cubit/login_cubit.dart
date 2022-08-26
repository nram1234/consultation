import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../net/apis/login_api.dart';
import '../../net/model/login_model.dart';
import '../../screen/main_page/main_page.dart';
import '../../utility/router.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  static LoginCubit get(context) => BlocProvider.of(context);
  LoginCubit() : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginModel? loginModel;
  bool isUser = true;



  void changeIsUser({required bool user}) {
   isUser=user;
    emit( LoginAsConsultation());
  }

logInRequest({ required BuildContext context}){
  emit( LoginIsLogin());
  LogInAPI logInAPI=LogInAPI();
  Map<String,dynamic>data={};
  data["email"]=emailController.text;
  data["password"]=passwordController.text;
  data["firebase_token"]="qwertyuioopasdfghjkll;zxcvbnm,bnhfdsr";

  logInAPI.post(data).then((value) {


    loginModel=value as LoginModel;
if(loginModel!.status!){
  MagicRouter.navigateAndPopAll(MainPage());
}else{


  emit(LoginErrorState());
}

  }).catchError((e){
    print("3333333333333333333333333333333333333333333333333333$e");
  });
}






}
