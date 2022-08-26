import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart' ;
import '../../net/apis/register_api.dart';
import '../../net/model/register_model.dart';
import 'package:dio/src/multipart_file.dart';
import 'package:dio/src/form_data.dart';
part 'signup_state.dart';
  enum Picof{experience,
    Scientific,
    Personal}
class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  final formKey = GlobalKey<FormState>();
List<int>experienceY=[];
int? YOfexperience;


  updateYOfexperience(  int? i){

    YOfexperience=i;
emit(UpDateYOfexperience());
  }

  insertexperienceY(){
    experienceY.clear();
for(int i=0;i<80;i++){
  experienceY.add(i);
}


  }

  Picof imgOf=Picof.Personal;
  static SignupCubit get(context) => BlocProvider.of(context);
    XFile? xPersonalimage;
  XFile? xScientificimage;
  XFile? xexperiencelimage;



  File? Personalimage;
  File? Scientificimage;
  File? experiencelimage;
//  XFile? photo;
  final ImagePicker _picker = ImagePicker();
  bool isM=false;

TextEditingController textEditingControllerName=TextEditingController();
  TextEditingController textEditingControllerEmail=TextEditingController();
  TextEditingController textEditingControllerPassword=TextEditingController();
  TextEditingController textEditingControllerPassword_confirmation=TextEditingController();


  TextEditingController textEditingControllerphone=TextEditingController();
  TextEditingController textEditingControlleradditional_phone=TextEditingController();
  TextEditingController textEditingControllerbirth_of_year=TextEditingController();
  TextEditingController textEditingControllereducationn=TextEditingController();


  TextEditingController textEditingControlleryears_of_experience=TextEditingController();



updateisMal({required bool v}){
  isM=v;

  emit(SignupisM());
}




  getImagegallery()async{
switch(imgOf){

  case Picof.experience:

  xexperiencelimage=await _picker.pickImage(source: ImageSource.gallery);

  experiencelimage = File(xexperiencelimage!.path);
    break;
  case Picof.Scientific:
    // TODO: Handle this case.

     xScientificimage=await _picker.pickImage(source: ImageSource.gallery);
     Scientificimage = File(xScientificimage!.path);
    break;
  case Picof.Personal:
    // TODO: Handle this case.
   xPersonalimage=await _picker.pickImage(source: ImageSource.gallery);
   Personalimage = File(xPersonalimage!.path);
    break;
}


  }
  getImagecamera()async{

    switch(imgOf){

      case Picof.experience:

        xexperiencelimage=await _picker.pickImage(source: ImageSource.camera);
        experiencelimage = File(xexperiencelimage!.path);
        break;
      case Picof.Scientific:
      // TODO: Handle this case.

        xScientificimage=await _picker.pickImage(source: ImageSource.camera);
        Scientificimage = File(xScientificimage!.path);
        break;
      case Picof.Personal:
      // TODO: Handle this case.
       xPersonalimage=await _picker.pickImage(source: ImageSource.camera);
       Personalimage = File(xPersonalimage!.path);
        break;
    }

  }




String? validat(String? v){
  if(v?.isEmpty??false){
    return "تاكد من ادخال جميع البيانات";
  }
  return null;
}



  registerRequest(context)async{
    RegisterApi registerApi=RegisterApi();
    RegisterModel? registerModel;
    Map<String,dynamic>data={};

    String? imageName = Personalimage?.path.split('/').last;

    String? education_certificateName = Scientificimage?.path.split('/').last;

    String? experience_certificateName =experiencelimage ?.path.split('/').last;
    data["name"]=textEditingControllerName.text;
    data["email"]=textEditingControllerEmail.text;
    data["password"]=textEditingControllerPassword.text;

    data["password_confirmation"]=textEditingControllerPassword_confirmation.text;
    data["phone"]=textEditingControllerphone.text;
    data["additional_phone"]=textEditingControlleradditional_phone.text;


    data["birth_of_year"]=textEditingControllerbirth_of_year.text;
    data["years_of_experience"]=YOfexperience;
    data["education"]=textEditingControllereducationn.text;
    data["experience"]=textEditingControlleryears_of_experience.text;
    data["firebase_token"]= "asgwdhsadkhsvfkavfkjvalfjavf";
    data["subcatgory_id"]= 1;
    data["gender"]= isM?"male":"female";
    if(Personalimage!=null){
      data["image"]=  await  MultipartFile.fromFile(Personalimage!.path,
          filename: imageName, contentType:   MediaType('image', 'png'));
    }
    if(Scientificimage!=null){
      data["experience_certificate"]=  await MultipartFile.fromFile(Scientificimage!.path,
          filename: experience_certificateName, contentType:   MediaType('image', 'png'));
    }
    if(experiencelimage!=null){
      data["education_certificate"]=  await MultipartFile.fromFile(experiencelimage!.path,
          filename: education_certificateName, contentType:   MediaType('image', 'png'));
    }


    FormData formData =FormData.fromMap(data);


    // FormData.fromMap({
    //
    //   "name": textEditingControllerName.text,
    //   "email":textEditingControllerEmail.text,
    //   "password": textEditingControllerPassword.text,
    //   "password_confirmation": textEditingControllerPassword_confirmation.text,
    //   "phone": textEditingControllerphone.text,
    //   "additional_phone": textEditingControlleradditional_phone.text,
    //   "birth_of_year": textEditingControllerbirth_of_year.text,
    //   "education": textEditingControllereducationn.text,
    //   "years_of_experience": YOfexperience,
    //   "experience": textEditingControlleryears_of_experience.text,
    //   "firebase_token":  "asgwdhsadkhsvfkavfkjvalfjavf",
    //   "subcatgory_id":  1,
    //   "gender": isM?"male":"female",
    //
    //
    //   "image": await MultipartFile.fromFile(Personalimage?.path??"",
    //       filename: imageName, contentType: new MediaType('image', 'png')),
    //
    //
    //   "experience_certificate": await MultipartFile.fromFile(Scientificimage?.path??"",
    //       filename: experience_certificateName, contentType: new MediaType('image', 'png')),
    //
    //
    //   "education_certificate": await MultipartFile.fromFile(experiencelimage?.path??"",
    //       filename: education_certificateName, contentType: new MediaType('image', 'png')),
    // });

print("formData     ==>${formData.fields}");
    registerApi.post(formData).then((value) {

      RegisterModel data=value as RegisterModel;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data!.msg!)),
      );
  print(value.toString());
  print("44646444646464");
});

}





  }


































// String fileName = file.path.split('/').last;
//
// FormData formData = new FormData.fromMap({
//   // "mode": "formdata",
//   "key": "1234567890",
//   "token_id": token_id, "name_tr": name_tr,
//   "description_tr": description_tr,
//   "title": title,
//   "title_en": title_en,
//   "stock": stock,
//   "current_price": current_price,
//   "old_price": old_price,
//   "description_ar": description_ar,
//   "description_en": description_en,
//   "file": await MultipartFile.fromFile(file.path,
//       filename: fileName, contentType: new MediaType('image', 'png')),
// });