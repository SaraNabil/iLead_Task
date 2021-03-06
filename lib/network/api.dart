import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:ilead_task/model/property_models/property_list_model.dart';
import 'package:ilead_task/model/slider_models/data.dart';
import 'package:ilead_task/model/slider_models/slider_list_model.dart';

class Api {
  static String _BASE_URL =
      'http://45.35.169.130/UGPRealEstate_Test/api/Property';

  static var _propertyBody = {
    "appLanguage": "en",
    "deviceSerial": "DA3D4B85-2809-485D-A93B-3F0B582FBF72",
    "MeasureUnitId": 1,
    "appversion": "",
    "notificationToken":
        "e9JCuaNS-0ZWgE7jwEr3-9:APA91bGw_QzWLtCEGUA7zFRJoiySzFra1i4IXMZBhDQaH1z3QuyInt726Wb7en4Xcbt7sj4HOSLPQITmvg2s7w6p_aTJtjOHS3kRT3jPz-HqpdvC7qLoqmduvJl2pU3kver_-l9QjSVG",
    "deviceType": 1,
    "userId": 1140,
    "data": {
      "PropertyFurnishingId": -1,
      "MinBathRoom": -1,
      "isRented": -1,
      "keyword": "",
      "MinPrice": -1,
      "MinArea": -1,
      "PropId": -1,
      "AreaId": -1,
      "CountryId": 65946,
      "CategoryName": "",
      "CityName": "",
      "PropertyAmenities": [],
      "LastRowId": 20,
      "CityId": -1,
      "propertyAdOnsDtos": [],
      "IsRentedName": "",
      "PropertyTypeName": "",
      "MaxArea": -1,
      "IsFeature": false,
      "MaxBathRoom": -1,
      "MinBedRoom": -1,
      "MaxPrice": -1,
      "CategoryId": -1,
      "FurnishedName": "",
      "PropertyTypeId": 1,
      "SortTypeId": -1,
      "MaxBedRoom": -1,
      "PropertyCity": []
    },
    "ip": "",
    "CurrencyId": 1,
    "CountryId": 65946,
    "osversion": ""
  };

  static var _sliderBody = {
    "appLanguage": "en",
    "deviceSerial": "DA3D4B85-2809-485D-A93B-3F0B582FBF72",
    "MeasureUnitId": 1,
    "appversion": "",
    "notificationToken":
        "e9JCuaNS-0ZWgE7jwEr3-9:APA91bGw_QzWLtCEGUA7zFRJoiySzFra1i4IXMZBhDQaH1z3QuyInt726Wb7en4Xcbt7sj4HOSLPQITmvg2s7w6p_aTJtjOHS3kRT3jPz-HqpdvC7qLoqmduvJl2pU3kver_-l9QjSVG",
    "deviceType": 1,
    "userId": 1140,
    "data": {},
    "ip": "",
    "CurrencyId": 1,
    "CountryId": 65946,
    "osversion": ""
  };
  static Future<PropertyList> getPropertyData() async {
    try {
      Response response = await Dio().post(
        "$_BASE_URL/PropertyList",
        data: jsonEncode(_propertyBody),
      );
      if (response.statusCode == 200) {
        print(response.data);
        return PropertyList.fromJson(response.data);
      } else {
        throw Exception('There is some thing wrong !!!');
      }
    } catch (e) {
      print("Exception from property-----> $e");
    }
  }

  static Future<SliderListModel> getSliderData() async {
    try {
      Response response = await Dio().post(
        "$_BASE_URL/SliderImagesProperty",
        data: jsonEncode(_sliderBody),
      );
      if (response.statusCode == 200) {
        print(response.data);
        return SliderListModel.fromJson(response.data);
      } else {
        throw Exception('There is some thing wrong !!!');
      }
    } catch (e) {
      print("Exception from slider -----> $e");
    }
  }
}
