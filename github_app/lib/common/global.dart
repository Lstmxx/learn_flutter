import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:github_app/common/net_cache.dart';
import 'package:github_app/log/log_helper.dart';
import 'package:github_app/models/cache_config.dart';
import 'package:github_app/models/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'git_api.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  static late SharedPreferences _prefs;
  static late Profile profile;
  static NetCache netCache = NetCache();

  static List<MaterialColor> get themes => _themes;

  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _prefs = await SharedPreferences.getInstance();

    var _profile = _prefs.getString("profile");

    if (_profile != null) {
      try {
        profile = Profile.fromJson(jsonDecode(_profile));
      } catch (e) {
        LogHelper.err('error', e);
      }
    } else {}

    profile.cache = profile.cache ??
        const CacheConfig(enable: true, maxAge: 3600, maxCount: 100);

    Git.init();
  }

  static saveProfile() =>
      _prefs.setString("profile", jsonEncode(profile.toJson()));
}
