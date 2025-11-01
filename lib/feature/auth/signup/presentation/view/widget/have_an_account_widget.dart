import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lufyuu_ecommerce/core/utils/color_manager.dart';

import '../../../../../../core/utils/app_text_styles.dart';



class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'have a account? ',
            style: TextStyles.bold12.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.bold12.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: 'Sign In',
            style:
            TextStyles.bold12.copyWith(color: ColorManager.primaryBlue),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}