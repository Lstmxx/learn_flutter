import 'dart:convert';

import 'package:collection/collection.dart';

class CacheConfig {
  final bool? enable;
  final int? maxAge;
  final int? maxCount;

  const CacheConfig({this.enable, this.maxAge, this.maxCount});

  @override
  String toString() {
    return 'CacheConfig(enable: $enable, maxAge: $maxAge, maxCount: $maxCount)';
  }

  factory CacheConfig.fromMap(Map<String, dynamic> data) => CacheConfig(
        enable: data['enable'] as bool?,
        maxAge: data['maxAge'] as int?,
        maxCount: data['maxCount'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'enable': enable,
        'maxAge': maxAge,
        'maxCount': maxCount,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CacheConfig].
  factory CacheConfig.fromJson(String data) {
    return CacheConfig.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CacheConfig] to a JSON string.
  String toJson() => json.encode(toMap());

  CacheConfig copyWith({
    bool? enable,
    int? maxAge,
    int? maxCount,
  }) {
    return CacheConfig(
      enable: enable ?? this.enable,
      maxAge: maxAge ?? this.maxAge,
      maxCount: maxCount ?? this.maxCount,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CacheConfig) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => enable.hashCode ^ maxAge.hashCode ^ maxCount.hashCode;
}
