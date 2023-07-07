import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111b21),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              child: Image.asset(
                'assets/images/cat.jpg',
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Read our ',
                      style: TextStyle(
                        color: Color(0xFF8696A0),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy. ',
                          style: TextStyle(
                            color: Color(0xFF53BDEB),
                          ),
                        ),
                        TextSpan(
                            text: 'Tap "Agree and continue" to accept the'),
                        TextSpan(
                          text: 'Terms of Services.',
                          style: TextStyle(
                            color: Color(0xFF53BDEB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00A884),
                    foregroundColor: const Color(0XFF111B21),
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: const Text(
                    'AGREE AND CONTINUE',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
