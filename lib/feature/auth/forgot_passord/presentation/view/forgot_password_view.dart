import 'package:flutter/material.dart';

import 'widget/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  static const routeName = 'forgotPasswordView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgotPasswordViewBody(),
    );
  }
}
