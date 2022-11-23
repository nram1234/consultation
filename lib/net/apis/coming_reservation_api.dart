import 'package:consultation/net/abstract_json_resource.dart';
import 'package:consultation/net/api_manager.dart';

import '../api_app.dart';
import '../model/reservation_model.dart';

class ComingReservationApi extends ApiManager{
  @override
  String apiUrl() {
    return APIApp.coming_reservationUrl;
  }

  @override
  AbstractJsonResource fromJson(data) {
  return ReservationModel.fromJson(data);
  }

}