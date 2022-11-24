import 'package:consultation/net/abstract_json_resource.dart';
import 'package:consultation/net/api_manager.dart';

import '../api_app.dart';
import '../model/rejected_sech_model.dart';
import '../model/reservation_model.dart';

class RejectedSechApi extends ApiManager{
  String id="";
  @override
  String apiUrl() {
    return APIApp.rejectUrl+id;
  }

  @override
  AbstractJsonResource fromJson(data) {
  return RejectedSechModel.fromJson(data);
  }

}