import 'package:flutter/material.dart';
import 'package:lufyuu_ecommerce/feature/auth/login/presentation/views/widget/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'loginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody()
    );
  }
}
