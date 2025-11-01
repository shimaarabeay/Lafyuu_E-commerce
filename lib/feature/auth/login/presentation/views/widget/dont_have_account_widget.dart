import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lufyuu_ecommerce/core/utils/color_manager.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../signup/presentation/view/signup_view.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have a account? ',
            style: TextStyles.bold12.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.bold14.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
              Navigator.pushNamed(context,SignupView.routeName);
              },
            text: 'Register',
            style:
            TextStyles.bold12.copyWith(color: ColorManager.primaryBlue),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}