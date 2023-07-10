import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/colors_common.dart';

class PrivacyAndTerm extends StatelessWidget {
  const PrivacyAndTerm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read our ',
          style: TextStyle(
            color: ColorsCommon.greenDark,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy. ',
              style: TextStyle(
                color: ColorsCommon.blueDark,
              ),
            ),
            TextSpan(text: 'Tap "Agree and continue" to accept the'),
            TextSpan(
              text: 'Terms of Services.',
              style: TextStyle(
                color: ColorsCommon.blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}