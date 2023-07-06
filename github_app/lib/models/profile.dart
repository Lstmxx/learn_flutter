// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

import 'package:github_app/models/cache_config.dart';
import 'package:github_app/models/user.dart';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  User? user;
  String? token;
  int? theme;
  CacheConfig? cache;
  String? lastLogin;
  String? locale;

  Profile({
    this.user,
    this.token,
    this.theme,
    this.cache,
    this.lastLogin,
    this.locale,
  });

  Profile copyWith({
    User? user,
    String? token,
    int? theme,
    CacheConfig? cache,
    String? lastLogin,
    String? locale,
  }) =>
      Profile(
        user: user ?? this.user,
        token: token ?? this.token,
        theme: theme ?? this.theme,
        cache: cache ?? this.cache,
        lastLogin: lastLogin ?? this.lastLogin,
        locale: locale ?? this.locale,
      );

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        user: json["user"],
        token: json["token"],
        theme: json["theme"],
        cache: json["cache"],
        lastLogin: json["lastLogin"],
        locale: json["locale"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "token": token,
        "theme": theme,
        "cache": cache,
        "lastLogin": lastLogin,
        "locale": locale,
      };
}
