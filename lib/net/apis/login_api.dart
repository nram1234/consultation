import 'package:consultation/net/abstract_json_resource.dart';
import 'package:consultation/net/api_manager.dart';

import '../api_app.dart';
import '../model/login_model.dart';

class LogInAPI extends ApiManager{
  @override
  String apiUrl() {
   return APIApp.loginUrl;
  }

  @override
  AbstractJsonResource fromJson(data) {
  return LoginModel.fromJson(data);
  }

}