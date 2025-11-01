import 'package:flutter/material.dart';
import '../../feature/auth/forgot_passord/presentation/view/forgot_password_view.dart';
import '../../feature/auth/login/presentation/views/login_view.dart';
import '../../feature/auth/signup/presentation/view/signup_view.dart';
import '../../feature/splash/views/splash_view.dart';



Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context)=> const SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context)=> const LoginView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context)=> const SignupView());
    case ForgotPasswordView.routeName:
      return MaterialPageRoute(builder: (context)=> const ForgotPasswordView());
    default :
      return MaterialPageRoute(builder: (context)=> const Scaffold());

  }
}