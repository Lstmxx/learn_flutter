import 'dart:convert';

import 'package:collection/collection.dart';

class Profile {
  String? user;
  String? token;
  int? theme;
  String? cache;
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

  @override
  String toString() {
    return 'Profile(user: $user, token: $token, theme: $theme, cache: $cache, lastLogin: $lastLogin, locale: $locale)';
  }

  factory Profile.fromMap(Map<String, dynamic> data) => Profile(
        user: data['user?'] as String?,
        token: data['token?'] as String?,
        theme: data['theme'] as int?,
        cache: data['cache?'] as String?,
        lastLogin: data['lastLogin?'] as String?,
        locale: data['locale?'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'user?': user,
        'token?': token,
        'theme': theme,
        'cache?': cache,
        'lastLogin?': lastLogin,
        'locale?': locale,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Profile].
  factory Profile.fromJson(String data) {
    return Profile.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Profile] to a JSON string.
  String toJson() => json.encode(toMap());

  Profile copyWith({
    String? user,
    String? token,
    int? theme,
    String? cache,
    String? lastLogin,
    String? locale,
  }) {
    return Profile(
      user: user ?? this.user,
      token: token ?? this.token,
      theme: theme ?? this.theme,
      cache: cache ?? this.cache,
      lastLogin: lastLogin ?? this.lastLogin,
      locale: locale ?? this.locale,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Profile) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      user.hashCode ^
      token.hashCode ^
      theme.hashCode ^
      cache.hashCode ^
      lastLogin.hashCode ^
      locale.hashCode;
}
