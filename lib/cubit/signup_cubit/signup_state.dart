part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}
class SignupIsSignup extends SignupState {}

class SignupSuccessState extends SignupState {

}

class SignupErrorState extends SignupState {

}

class SignupisM extends SignupState {}
class UpDateYOfexperience extends SignupState {}