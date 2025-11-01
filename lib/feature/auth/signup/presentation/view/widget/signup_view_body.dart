import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_text_field.dart';
import 'have_an_account_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/Icon.svg'),
            SizedBox(height: 15),
            Text('Let’s Get Started',
                style: TextStyles.bold16
                    .copyWith(color: ColorManager.neutralDark)),
            SizedBox(height: 10),
            Text(
              'Create an new account',
              style:
              TextStyles.semiBold12.copyWith(color: ColorManager.neutralGrey),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              hintText: 'Your Name',
              textInputType: TextInputType.emailAddress,
              suffixIcon: Icon(
                Icons.person_outline_rounded,
                color: ColorManager.neutralGrey,
              ),
            ),
            SizedBox(
              height: 5,
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
              hintText: 'Password',
              textInputType: TextInputType.emailAddress,
              suffixIcon: Icon(
               Icons.lock_outlined,
                color: ColorManager.neutralGrey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextFormField(
              hintText: 'Password Again',
              textInputType: TextInputType.emailAddress,
              suffixIcon: Icon(
                Icons.lock_outlined,
                color: ColorManager.neutralGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              onPressed: () {},
              text: 'Sign Up',
            ),
            SizedBox(height: 10,),
            HaveAnAccountWidget()
          ],
        ),
      ),
    );
  }
}
