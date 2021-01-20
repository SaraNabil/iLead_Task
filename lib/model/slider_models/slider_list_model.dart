import 'data.dart';

class SliderListModel {
  int responseCode;
  String responseMessageEn;
  String responseMessageAr;
  String responseMessage;
  String responseRemark;
  List<SliderData> data;

  SliderListModel(
      {int responseCode,
      String responseMessageEn,
      String responseMessageAr,
      String responseMessage,
      String responseRemark,
      List<SliderData> data}) {
    this.responseCode = responseCode;
    this.responseMessageEn = responseMessageEn;
    this.responseMessageAr = responseMessageAr;
    this.responseMessage = responseMessage;
    this.responseRemark = responseRemark;
    this.data = data;
  }

  SliderListModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['responseCode'];
    responseMessageEn = json['responseMessageEn'];
    responseMessageAr = json['responseMessageAr'];
    responseMessage = json['responseMessage'];
    responseRemark = json['responseRemark'];
    if (json['data'] != null) {
      data = new List<SliderData>();
      json['data'].forEach((v) {
        data.add(new SliderData.fromJson(v));
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