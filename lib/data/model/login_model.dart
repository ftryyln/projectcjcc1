import 'dart:convert';
/// meta : {"code":200,"status":"success","message":"berhasil login"}
/// data : {"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzgwY2MwNTY5MzNiZWE4YTJkYmZmMzUxYjQxYjczMWU4YjE5NDVhNjExYjg4NTkxMjJjNDM0MmRhOTY2ZjA4ZjQzYmQ3ZWZjZjYyOGExN2UiLCJpYXQiOjE2Njc3ODk3NzYuOTYzNzY4LCJuYmYiOjE2Njc3ODk3NzYuOTYzNzc0LCJleHAiOjE2OTkzMjU3NzYuOTU2OTY2LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.juGw1CDVEx2-qV69ATBSEM2b8M1XUdZApeDEgkHixu78preBkaW9hEHQQ4nA3HJNzo5QzL_QGLASOvGLZlD8K7-ZURzrcOFcBCw_JSYznwZitAyrDppFCo6FY6HaVb46BEHWFhTlRZJfNZk8WfJI0ORpcrJFpPEYPOXGoLynApsXfgpl1ntFoDhl3fo7CeBU1z3gQhbTQaYxYfo7QZQse4NlzhJ4u8rOpdIfTyOOO27nM8z6GAiaA619Y2RZcAVqqqHN97tLjSpPbIPzty9lz8WaUzfwD4Vk0G71JEkaYhgP0M6y4KwoCx-W7n_iuryVPUY_Jqtt5IK2Q8Ly1B6RsaSnQiiA38utBE9ZGgFT_kie_VZ7ZSJn6ckvtSeCslgPs-DQC840j5yRmY_VfT8a8e3S7nhZYtwBzhQhdmLEd398Y_BHDFlHy8bnkMIIQFgQFdwhrdTpMK3GgPgCZ7SHtB4I7HApDPNrfBj2b_RiAfxBNqMi0HXqMesLRbbzq2wqEKaEhwvaDKW_qFVEOOcah4c1t3JCyJv_WEaxNbWTRF46cKyWyxJ03o0yVUCNSFehEi7Kyh1pXfkkEjp4Q7DA2bcl-8HNAxx96iz1DZxTcLiiv6py0tWUtucTCyOXCI5MAMkob1WcsnpGfrN4T9BijG5G-KNv29I4spyOyOEySUY","user":null}

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));
String loginModelToJson(LoginModel data) => json.encode(data.toJson());
class LoginModel {
  LoginModel({
      Meta? meta, 
      Data? data,}){
    _meta = meta;
    _data = data;
}

  LoginModel.fromJson(dynamic json) {
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Meta? _meta;
  Data? _data;
LoginModel copyWith({  Meta? meta,
  Data? data,
}) => LoginModel(  meta: meta ?? _meta,
  data: data ?? _data,
);
  Meta? get meta => _meta;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzgwY2MwNTY5MzNiZWE4YTJkYmZmMzUxYjQxYjczMWU4YjE5NDVhNjExYjg4NTkxMjJjNDM0MmRhOTY2ZjA4ZjQzYmQ3ZWZjZjYyOGExN2UiLCJpYXQiOjE2Njc3ODk3NzYuOTYzNzY4LCJuYmYiOjE2Njc3ODk3NzYuOTYzNzc0LCJleHAiOjE2OTkzMjU3NzYuOTU2OTY2LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.juGw1CDVEx2-qV69ATBSEM2b8M1XUdZApeDEgkHixu78preBkaW9hEHQQ4nA3HJNzo5QzL_QGLASOvGLZlD8K7-ZURzrcOFcBCw_JSYznwZitAyrDppFCo6FY6HaVb46BEHWFhTlRZJfNZk8WfJI0ORpcrJFpPEYPOXGoLynApsXfgpl1ntFoDhl3fo7CeBU1z3gQhbTQaYxYfo7QZQse4NlzhJ4u8rOpdIfTyOOO27nM8z6GAiaA619Y2RZcAVqqqHN97tLjSpPbIPzty9lz8WaUzfwD4Vk0G71JEkaYhgP0M6y4KwoCx-W7n_iuryVPUY_Jqtt5IK2Q8Ly1B6RsaSnQiiA38utBE9ZGgFT_kie_VZ7ZSJn6ckvtSeCslgPs-DQC840j5yRmY_VfT8a8e3S7nhZYtwBzhQhdmLEd398Y_BHDFlHy8bnkMIIQFgQFdwhrdTpMK3GgPgCZ7SHtB4I7HApDPNrfBj2b_RiAfxBNqMi0HXqMesLRbbzq2wqEKaEhwvaDKW_qFVEOOcah4c1t3JCyJv_WEaxNbWTRF46cKyWyxJ03o0yVUCNSFehEi7Kyh1pXfkkEjp4Q7DA2bcl-8HNAxx96iz1DZxTcLiiv6py0tWUtucTCyOXCI5MAMkob1WcsnpGfrN4T9BijG5G-KNv29I4spyOyOEySUY"
/// user : null

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? token, 
      dynamic user,}){
    _token = token;
    _user = user;
}

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _user = json['user'];
  }
  String? _token;
  dynamic _user;
Data copyWith({  String? token,
  dynamic user,
}) => Data(  token: token ?? _token,
  user: user ?? _user,
);
  String? get token => _token;
  dynamic get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['user'] = _user;
    return map;
  }

}

/// code : 200
/// status : "success"
/// message : "berhasil login"

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