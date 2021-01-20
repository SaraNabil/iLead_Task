class Amenities {
  int _id;
  String _name;
  Null _imageUrl;

  Amenities({int id, String name, Null imageUrl}) {
    this._id = id;
    this._name = name;
    this._imageUrl = imageUrl;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  Null get imageUrl => _imageUrl;
  set imageUrl(Null imageUrl) => _imageUrl = imageUrl;

  Amenities.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['imageUrl'] = this._imageUrl;
    return data;
  }
}
