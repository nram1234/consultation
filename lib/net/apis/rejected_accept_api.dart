import 'package:consultation/net/abstract_json_resource.dart';
import 'package:consultation/net/api_manager.dart';

import '../api_app.dart';
import '../model/rejected_sech_model.dart';
import '../model/reservation_model.dart';

class AcceptSechApi extends ApiManager{
  String id="";
  @override
  String apiUrl() {
    return APIApp.acceptUrl+id;
  }

  @override
  AbstractJsonResource fromJson(data) {
  return RejectedSechModel.fromJson(data);
  }

}