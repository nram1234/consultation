import 'package:consultation/net/abstract_json_resource.dart';

class RejectedSechModel extends AbstractJsonResource{
  bool? status;
  String? errNum;
  String? msg;

  RejectedSechModel({this.status, this.errNum, this.msg});

  RejectedSechModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errNum'] = this.errNum;
    data['msg'] = this.msg;
    return data;
  }
}
