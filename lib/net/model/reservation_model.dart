import 'package:consultation/net/abstract_json_resource.dart';

class ReservationModel  extends AbstractJsonResource{
  bool? status;
  String? errNum;
  String? msg;
  List<Reservaions>? reservaions;

  ReservationModel({this.status, this.errNum, this.msg, this.reservaions});

  ReservationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    if (json['reservaions'] != null) {
      reservaions = <Reservaions>[];
      json['reservaions'].forEach((v) {
        reservaions!.add(new Reservaions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errNum'] = this.errNum;
    data['msg'] = this.msg;
    if (this.reservaions != null) {
      data['reservaions'] = this.reservaions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reservaions {
  int? appointmentId;
  int? reservationId;
  int? userId;
  int? consultantId;
  String? consultantName;
  String? date;
  String? timeFrom;
  String? timeTo;
  int? cost;
  String? type;

  Reservaions(
      {this.appointmentId,
        this.reservationId,
        this.userId,
        this.consultantId,
        this.consultantName,
        this.date,
        this.timeFrom,
        this.timeTo,
        this.cost,
        this.type});

  Reservaions.fromJson(Map<String, dynamic> json) {
    appointmentId = json['appointment_id'];
    reservationId = json['reservation_id'];
    userId = json['user_id'];
    consultantId = json['consultant_id'];
    consultantName = json['consultant_name'];
    date = json['date'];
    timeFrom = json['time_from'];
    timeTo = json['time_to'];
    cost = json['cost'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['appointment_id'] = this.appointmentId;
    data['reservation_id'] = this.reservationId;
    data['user_id'] = this.userId;
    data['consultant_id'] = this.consultantId;
    data['consultant_name'] = this.consultantName;
    data['date'] = this.date;
    data['time_from'] = this.timeFrom;
    data['time_to'] = this.timeTo;
    data['cost'] = this.cost;
    data['type'] = this.type;
    return data;
  }
}