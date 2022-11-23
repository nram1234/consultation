import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:get/get.dart'  as a ;


import '../utility/all_string_const.dart';
import '../utility/storage.dart';
import 'abstract_json_resource.dart';
import '../utility/dio_singleton.dart';
import 'dio_singleton.dart';



abstract class ApiManager {
  final DioSingleton dioSingleton = DioSingleton();
  //final _storge= a.Get.find<SecureStorage>();
  /// Returns the API URL of current API ressource
  String apiUrl();

  AbstractJsonResource fromJson(data);

  Future<AbstractJsonResource?> getData({data}) async {
    String? token=    SecureStorage.readSecureData( AllStringConst.Token);
    AbstractJsonResource? json;
    Options options=Options(headers:   {

    'Content-Type': 'application/json',
        "authorization":"Bearer ${token}"
    });

    var data;
    await dioSingleton.dio
        .get( apiUrl()  ,queryParameters: data, options: options)
        .then((value) {
          print(value.data["Status"]);
      if(value.data["Status"]==false){


        a.Get.snackbar("Error".tr, "${value.data["ErrorMessage"]}");
      }else{


        data = value.data;
        json = fromJson(data);
      }


    });


    return json;
  }
  /// POST DATA TO SERVER
  Future<AbstractJsonResource?> post(  dataToPost) async {
    AbstractJsonResource? jsonList;
    var data;

    Options options = Options(headers: {
      "Accept": "application/json",
      'Content-Type': 'application/json',
    },);
    print(dataToPost);
    await dioSingleton.dio
        .post(
        apiUrl(),
        data:  dataToPost,
        options: options
      // Options(
      //     followRedirects: false,
      //     validateStatus: (status) {
      //       return status < 500;
      //     }),
    )
        .then((value) {
print(value);

      data = value.data;
      jsonList = fromJson(data);
    });
    return jsonList;}
//

}
