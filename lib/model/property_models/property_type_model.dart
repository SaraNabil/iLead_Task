class PropertyType {
  int _id;
  String _name;
  int _propertyType;

  PropertyType({int id, String name, int propertyType}) {
    this._id = id;
    this._name = name;
    this._propertyType = propertyType;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  int get propertyType => _propertyType;
  set propertyType(int propertyType) => _propertyType = propertyType;

  PropertyType.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _propertyType = json['propertyType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['propertyType'] = this._propertyType;
    return data;
  }
}