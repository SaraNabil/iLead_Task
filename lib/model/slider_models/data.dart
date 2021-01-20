import '../property_models/property_images.dart';
import '../property_models/property_type_model.dart';

import 'amenities.dart';

class SliderData {
  int _rowNum;
  int _id;
  String _unitRef;
  String _unitNo;
  String _floorNumber;
  String _title;
  String _price;
  String _phone;
  String _email;
  String _address;
  String _category;
  double _area;
  double _bedRoom;
  double _bathRoom;
  int _parking;
  Null _distanceFromMe;
  double _latitude;
  double _longtiude;
  bool _isFavourit;
  double _areaSpace;
  double _serviceCharge;
  bool _isRented;
  double _rentAmount;
  bool _mortirage;
  Null _expireDate;
  bool _isHotDeals;
  bool _isFeatured;
  bool _isMap;
  Null _status;
  bool _isSold;
  List<PropertyImages> _propertyImages;
  PropertyType _propertyType;
  List<SliderAmenities> _amenities;
  String _description;
  String _shareLink;
  String _furnishing;
  PrimaryView _primaryView;
  String _smsNo;

  SliderData(
      {int rowNum,
      int id,
      String unitRef,
      String unitNo,
      String floorNumber,
      String title,
      String price,
      String phone,
      String email,
      String address,
      String category,
      double area,
      double bedRoom,
      double bathRoom,
      int parking,
      Null distanceFromMe,
      double latitude,
      double longtiude,
      bool isFavourit,
    double areaSpace,
      double serviceCharge,
      bool isRented,
      double rentAmount,
      bool mortirage,
      Null expireDate,
      bool isHotDeals,
      bool isFeatured,
      bool isMap,
      Null status,
      bool isSold,
      List<PropertyImages> propertyImages,
      PropertyType propertyType,
      List<SliderAmenities> amenities,
      String description,
      String shareLink,
      String furnishing,
      PrimaryView primaryView,
      String smsNo}) {
    this._rowNum = rowNum;
    this._id = id;
    this._unitRef = unitRef;
    this._unitNo = unitNo;
    this._floorNumber = floorNumber;
    this._title = title;
    this._price = price;
    this._phone = phone;
    this._email = email;
    this._address = address;
    this._category = category;
    this._area = area;
    this._bedRoom = bedRoom;
    this._bathRoom = bathRoom;
    this._parking = parking;
    this._distanceFromMe = distanceFromMe;
    this._latitude = latitude;
    this._longtiude = longtiude;
    this._isFavourit = isFavourit;
    this._areaSpace = areaSpace;
    this._serviceCharge = serviceCharge;
    this._isRented = isRented;
    this._rentAmount = rentAmount;
    this._mortirage = mortirage;
    this._expireDate = expireDate;
    this._isHotDeals = isHotDeals;
    this._isFeatured = isFeatured;
    this._isMap = isMap;
    this._status = status;
    this._isSold = isSold;
    this._propertyImages = propertyImages;
    this._propertyType = propertyType;
    this._amenities = amenities;
    this._description = description;
    this._shareLink = shareLink;
    this._furnishing = furnishing;
    this._primaryView = primaryView;
    this._smsNo = smsNo;
  }

  int get rowNum => _rowNum;
  set rowNum(int rowNum) => _rowNum = rowNum;
  int get id => _id;
  set id(int id) => _id = id;
  String get unitRef => _unitRef;
  set unitRef(String unitRef) => _unitRef = unitRef;
  String get unitNo => _unitNo;
  set unitNo(String unitNo) => _unitNo = unitNo;
  String get floorNumber => _floorNumber;
  set floorNumber(String floorNumber) => _floorNumber = floorNumber;
  String get title => _title;
  set title(String title) => _title = title;
  String get price => _price;
  set price(String price) => _price = price;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  String get email => _email;
  set email(String email) => _email = email;
  String get address => _address;
  set address(String address) => _address = address;
  String get category => _category;
  set category(String category) => _category = category;
  double get area => _area;
  set area(double area) => _area = area;
  double get bedRoom => _bedRoom;
  set bedRoom(double bedRoom) => _bedRoom = bedRoom;
  double get bathRoom => _bathRoom;
  set bathRoom(double bathRoom) => _bathRoom = bathRoom;
  int get parking => _parking;
  set parking(int parking) => _parking = parking;
  Null get distanceFromMe => _distanceFromMe;
  set distanceFromMe(Null distanceFromMe) => _distanceFromMe = distanceFromMe;
  double get latitude => _latitude;
  set latitude(double latitude) => _latitude = latitude;
  double get longtiude => _longtiude;
  set longtiude(double longtiude) => _longtiude = longtiude;
  bool get isFavourit => _isFavourit;
  set isFavourit(bool isFavourit) => _isFavourit = isFavourit;
  double get areaSpace => _areaSpace;
  set areaSpace(double areaSpace) => _areaSpace = areaSpace;
  double get serviceCharge => _serviceCharge;
  set serviceCharge(double serviceCharge) => _serviceCharge = serviceCharge;
  bool get isRented => _isRented;
  set isRented(bool isRented) => _isRented = isRented;
  double get rentAmount => _rentAmount;
  set rentAmount(double rentAmount) => _rentAmount = rentAmount;
  bool get mortirage => _mortirage;
  set mortirage(bool mortirage) => _mortirage = mortirage;
  Null get expireDate => _expireDate;
  set expireDate(Null expireDate) => _expireDate = expireDate;
  bool get isHotDeals => _isHotDeals;
  set isHotDeals(bool isHotDeals) => _isHotDeals = isHotDeals;
  bool get isFeatured => _isFeatured;
  set isFeatured(bool isFeatured) => _isFeatured = isFeatured;
  bool get isMap => _isMap;
  set isMap(bool isMap) => _isMap = isMap;
  Null get status => _status;
  set status(Null status) => _status = status;
  bool get isSold => _isSold;
  set isSold(bool isSold) => _isSold = isSold;
  List<PropertyImages> get propertyImages => _propertyImages;
  set propertyImages(List<PropertyImages> propertyImages) =>
      _propertyImages = propertyImages;
  PropertyType get propertyType => _propertyType;
  set propertyType(PropertyType propertyType) => _propertyType = propertyType;
  List<SliderAmenities> get amenities => _amenities;
  set amenities(List<SliderAmenities> amenities) => _amenities = amenities;
  String get description => _description;
  set description(String description) => _description = description;
  String get shareLink => _shareLink;
  set shareLink(String shareLink) => _shareLink = shareLink;
  String get furnishing => _furnishing;
  set furnishing(String furnishing) => _furnishing = furnishing;
  PrimaryView get primaryView => _primaryView;
  set primaryView(PrimaryView primaryView) => _primaryView = primaryView;
  String get smsNo => _smsNo;
  set smsNo(String smsNo) => _smsNo = smsNo;

  SliderData.fromJson(Map<String, dynamic> json) {
    _rowNum = json['rowNum'];
    _id = json['id'];
    _unitRef = json['unitRef'];
    _unitNo = json['unitNo'];
    _floorNumber = json['floorNumber'];
    _title = json['title'];
    _price = json['price'];
    _phone = json['phone'];
    _email = json['email'];
    _address = json['address'];
    _category = json['category'];
    _area = json['area'];
    _bedRoom = json['bedRoom'];
    _bathRoom = json['bathRoom'];
    _parking = json['parking'];
    _distanceFromMe = json['distanceFromMe'];
    _latitude = json['latitude'];
    _longtiude = json['longtiude'];
    _isFavourit = json['isFavourit'];
    _areaSpace = json['areaSpace'];
    _serviceCharge = json['serviceCharge'];
    _isRented = json['isRented'];
    _rentAmount = json['rentAmount'];
    _mortirage = json['mortirage'];
    _expireDate = json['expireDate'];
    _isHotDeals = json['isHotDeals'];
    _isFeatured = json['isFeatured'];
    _isMap = json['isMap'];
    _status = json['status'];
    _isSold = json['isSold'];
    if (json['propertyImages'] != null) {
      _propertyImages = new List<PropertyImages>();
      json['propertyImages'].forEach((v) {
        _propertyImages.add(new PropertyImages.fromJson(v));
      });
    }
    _propertyType = json['propertyType'] != null
        ? new PropertyType.fromJson(json['propertyType'])
        : null;
    if (json['amenities'] != null) {
      _amenities = new List<SliderAmenities>();
      json['amenities'].forEach((v) {
        _amenities.add(new SliderAmenities.fromJson(v));
      });
    }
    _description = json['description'];
    _shareLink = json['shareLink'];
    _furnishing = json['furnishing'];
    _primaryView = json['primaryView'] != null
        ? new PrimaryView.fromJson(json['primaryView'])
        : null;
    _smsNo = json['smsNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rowNum'] = this._rowNum;
    data['id'] = this._id;
    data['unitRef'] = this._unitRef;
    data['unitNo'] = this._unitNo;
    data['floorNumber'] = this._floorNumber;
    data['title'] = this._title;
    data['price'] = this._price;
    data['phone'] = this._phone;
    data['email'] = this._email;
    data['address'] = this._address;
    data['category'] = this._category;
    data['area'] = this._area;
    data['bedRoom'] = this._bedRoom;
    data['bathRoom'] = this._bathRoom;
    data['parking'] = this._parking;
    data['distanceFromMe'] = this._distanceFromMe;
    data['latitude'] = this._latitude;
    data['longtiude'] = this._longtiude;
    data['isFavourit'] = this._isFavourit;
    data['areaSpace'] = this._areaSpace;
    data['serviceCharge'] = this._serviceCharge;
    data['isRented'] = this._isRented;
    data['rentAmount'] = this._rentAmount;
    data['mortirage'] = this._mortirage;
    data['expireDate'] = this._expireDate;
    data['isHotDeals'] = this._isHotDeals;
    data['isFeatured'] = this._isFeatured;
    data['isMap'] = this._isMap;
    data['status'] = this._status;
    data['isSold'] = this._isSold;
    if (this._propertyImages != null) {
      data['propertyImages'] =
          this._propertyImages.map((v) => v.toJson()).toList();
    }
    if (this._propertyType != null) {
      data['propertyType'] = this._propertyType.toJson();
    }
    if (this._amenities != null) {
      data['amenities'] = this._amenities.map((v) => v.toJson()).toList();
    }
    data['description'] = this._description;
    data['shareLink'] = this._shareLink;
    data['furnishing'] = this._furnishing;
    if (this._primaryView != null) {
      data['primaryView'] = this._primaryView.toJson();
    }
    data['smsNo'] = this._smsNo;
    return data;
  }
}