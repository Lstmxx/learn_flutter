import 'package:flutter/material.dart';
import 'package:github_app/common/global.dart';
import 'package:github_app/l10n/localization_intl.dart';
import 'package:github_app/states/index.dart';
import 'package:provider/provider.dart';

void main() {
  Global.init().then((e) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModel()),
        ChangeNotifierProvider(create: (_) => UserModel()),
        ChangeNotifierProvider(create: (_) => LocaleModel()),
      ],
      child: Consumer2<ThemeModel, LocaleModel>(
        builder: (BuildContext context, themeModel, localeModel, child) {
          return MaterialApp(
            theme: ThemeData(primarySwatch: themeModel.theme),
            onGenerateTitle: (context) {
              return GmLocalizations.of(context).title;
            },
          );
        },
      ),
    );
  }
}
