part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginAsConsultation extends LoginState {}
class LoginIsLogin extends LoginState {}

class LoginSuccessState extends LoginState {

}

class LoginErrorState extends LoginState {

}

class LoginShowHidePassword extends LoginState {}