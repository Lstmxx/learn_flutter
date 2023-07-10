import 'package:flutter/material.dart';
import 'package:whatsapp/common/widgets/custom_elevated_button.dart';

import '../widgets/language_select.dart';
import '../widgets/privacy_and_term.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                child: Image.asset(
                  'assets/images/cat.jpg',
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome to whatsApp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                const PrivacyAndTerm(),
                CustomElevatedButton(
                  text: 'AGREE AND CONTINUE',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
                const LanguageSelect(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
