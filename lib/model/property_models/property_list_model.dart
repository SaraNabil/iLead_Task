import './data.dart';
class PropertyList {
  int responseCode;
  String responseMessageEn;
  String responseMessageAr;
  String responseMessage;
  String responseRemark;
  List<Data> data;

  PropertyList(
      {int responseCode,
      String responseMessageEn,
      String responseMessageAr,
      String responseMessage,
      String responseRemark,
      List<Data> data}) {
    this.responseCode = responseCode;
    this.responseMessageEn = responseMessageEn;
    this.responseMessageAr = responseMessageAr;
    this.responseMessage = responseMessage;
    this.responseRemark = responseRemark;
    this.data = data;
  }

  PropertyList.fromJson(Map<String, dynamic> json) {
    responseCode = json['responseCode'];
    responseMessageEn = json['responseMessageEn'];
    responseMessageAr = json['responseMessageAr'];
    responseMessage = json['responseMessage'];
    responseRemark = json['responseRemark'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responseCode'] = this.responseCode;
    data['responseMessageEn'] = this.responseMessageEn;
    data['responseMessageAr'] = this.responseMessageAr;
    data['responseMessage'] = this.responseMessage;
    data['responseRemark'] = this.responseRemark;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}