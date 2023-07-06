// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  String user;
  String token;
  int theme;
  String cache;
  String lastLogin;
  String locale;

  Profile({
    required this.user,
    required this.token,
    required this.theme,
    required this.cache,
    required this.lastLogin,
    required this.locale,
  });

  Profile copyWith({
    String? user,
    String? token,
    int? theme,
    String? cache,
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
