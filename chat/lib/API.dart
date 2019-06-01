import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

class RegisterUser {
  final String email;
  final String name;
  final String nickname;

  RegisterUser({this.email, this.name, this.nickname});

  factory RegisterUser.fromJson(Map<String, dynamic> json) {
    return RegisterUser(
        email: json['email'], name: json['name'], nickname: json['nickname']);
  }

  String toMap() {
    var map = new Map<String, String>();
    map["email"] = email;
    map["name"] = name;
    map["nickname"] = nickname;
    return json.encode(map);
  }

}
