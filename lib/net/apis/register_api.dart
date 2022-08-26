import 'package:consultation/net/abstract_json_resource.dart';
import 'package:consultation/net/api_manager.dart';

import '../api_app.dart';
import '../model/register_model.dart';

    class RegisterApi extends ApiManager{
  @override
  String apiUrl() {
    return APIApp.registerUrl;
  }

  @override
  AbstractJsonResource fromJson(data) {
   return RegisterModel.fromJson(data);
  }

}