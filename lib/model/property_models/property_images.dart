class PropertyImages {
  int _id;
  String _url;
  bool _isMain;
  String _type;
  bool _isIntegration;

  PropertyImages(
      {int id, String url, bool isMain, String type, bool isIntegration}) {
    this._id = id;
    this._url = url;
    this._isMain = isMain;
    this._type = type;
    this._isIntegration = isIntegration;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get url => _url;
  set url(String url) => _url = url;
  bool get isMain => _isMain;
  set isMain(bool isMain) => _isMain = isMain;
  String get type => _type;
  set type(String type) => _type = type;
  bool get isIntegration => _isIntegration;
  set isIntegration(bool isIntegration) => _isIntegration = isIntegration;

  PropertyImages.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _url = json['url'];
    _isMain = json['isMain'];
    _type = json['type'];
    _isIntegration = json['isIntegration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['url'] = this._url;
    data['isMain'] = this._isMain;
    data['type'] = this._type;
    data['isIntegration'] = this._isIntegration;
    return data;
  }
}
