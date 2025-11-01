import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lufyuu_ecommerce/core/utils/color_manager.dart';
import 'package:lufyuu_ecommerce/core/widget/custom_button.dart';
import 'package:lufyuu_ecommerce/core/widget/custom_text_field.dart';
import 'package:lufyuu_ecommerce/feature/auth/login/presentation/views/widget/dont_have_account_widget.dart';
import 'package:lufyuu_ecommerce/feature/auth/login/presentation/views/widget/or_driver.dart';
import 'package:lufyuu_ecommerce/feature/auth/login/presentation/views/widget/social_login_button.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../forgot_passord/presentation/view/forgot_password_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Icon.svg'),
              SizedBox(height: 15),
              Text('Welcome to Lafyuu',
                  style: TextStyles.bold16
                      .copyWith(color: ColorManager.neutralDark)),
              SizedBox(height: 10),
              Text(
                'Sign in to continue',
                style:
                    TextStyles.semiBold12.copyWith(color: ColorManager.neutralGrey),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                hintText: 'Your Email',
                textInputType: TextInputType.emailAddress,
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: ColorManager.neutralGrey,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                  hintText: 'password',
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xFF9098B1),
                  )),
              SizedBox(
                height: 10,
              ),
              CustomButton(onPressed: () {}, text: 'Sign In'),
              SizedBox(
                height: 5,
              ),
              OrDivider(),
              SizedBox(
                height: 10,
              ),
              SocialLoginButton(
                  image: 'assets/images/googel_icon.svg',
                  title: 'Login with Google',
                  onPressed: () {}),
              SizedBox(height: 10),
              SocialLoginButton(
                  image: 'assets/images/facebook_icon.svg',
                  title: 'Login with Facebook',
                  onPressed: () {}),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context,ForgotPasswordView.routeName);
                },
                child: Text('Forgot Password?',style:TextStyles.bold12.copyWith(color: ColorManager.primaryBlue),),
              ),
              SizedBox(height: 5,),
              DontHaveAnAccountWidget()
            ],
          ),
        ),
      ),
    );
  }
}
