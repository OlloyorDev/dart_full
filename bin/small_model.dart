class SmallModel {
  SmallModel({
    this.success,
    this.data,
  });

  SmallModel.fromJson(dynamic json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? success;
  Data? data;

  SmallModel copyWith({
    bool? success,
    Data? data,
  }) =>
      SmallModel(
        success: success ?? this.success,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    this.name,
    this.lastName,
    this.age,
  });

  Data.fromJson(dynamic json) {
    name = json['name'];
    lastName = json['last_name'];
    age = json['age'];
  }

  String? name;
  String? lastName;
  int? age;

  Data copyWith({
    String? name,
    String? lastName,
    int? age,
  }) =>
      Data(
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        age: age ?? this.age,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['last_name'] = lastName;
    map['age'] = age;
    return map;
  }
}

SmallModel? function() {
  return null;
}
