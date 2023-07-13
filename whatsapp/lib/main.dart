import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/routes/routes.dart';
import 'package:whatsapp/common/theme/dark_theme.dart';
import 'package:whatsapp/common/theme/light_theme.dart';
import 'package:whatsapp/firebase_options.dart';
import 'package:whatsapp/modules/auth/controller/auth_controller.dart';
import 'package:whatsapp/modules/auth/pages/login_page.dart';
import 'package:whatsapp/modules/auth/pages/verification_page.dart';
import 'package:whatsapp/modules/home/pages/home_page.dart';
import 'package:whatsapp/modules/welcome/pages/welcome_page.dart';

import 'modules/auth/pages/user_info_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whats app me',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: ref.watch(userInfoAuthProvider).when(
        data: (user) {
          if (user == null) return const WelcomePage();
          return const HomePage();
        },
        error: (error, trace) {
          return const Scaffold(
            body: Center(
              child: Text('Somthing wrong happend!'),
            ),
          );
        },
        loading: () {
          return Scaffold(
            body: Center(
              child: Image.asset(
                'assets/images/cat.jpg',
              ),
            ),
          );
        },
      ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
