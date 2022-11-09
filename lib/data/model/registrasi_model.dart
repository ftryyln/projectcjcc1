import 'dart:convert';
/// meta : {"code":201,"status":"success","message":"user berhasil daftar"}
/// data : []

RegistrasiModel registrasiModelFromJson(String str) => RegistrasiModel.fromJson(json.decode(str));
String registrasiModelToJson(RegistrasiModel data) => json.encode(data.toJson());
class RegistrasiModel {
  RegistrasiModel({
      Meta? meta, 
      List<dynamic>? data,}){
    _meta = meta;
    _data = data;
}

  RegistrasiModel.fromJson(dynamic json) {
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  Meta? _meta;
  List<dynamic>? _data;
RegistrasiModel copyWith({  Meta? meta,
  List<dynamic>? data,
}) => RegistrasiModel(  meta: meta ?? _meta,
  data: data ?? _data,
);
  Meta? get meta => _meta;
  List<dynamic>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// code : 201
/// status : "success"
/// message : "user berhasil daftar"

Meta metaFromJson(String str) => Meta.fromJson(json.decode(str));
String metaToJson(Meta data) => json.encode(data.toJson());
class Meta {
  Meta({
      int? code, 
      String? status, 
      String? message,}){
    _code = code;
    _status = status;
    _message = message;
}

  Meta.fromJson(dynamic json) {
    _code = json['code'];
    _status = json['status'];
    _message = json['message'];
  }
  int? _code;
  String? _status;
  String? _message;
Meta copyWith({  int? code,
  String? status,
  String? message,
}) => Meta(  code: code ?? _code,
  status: status ?? _status,
  message: message ?? _message,
);
  int? get code => _code;
  String? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}