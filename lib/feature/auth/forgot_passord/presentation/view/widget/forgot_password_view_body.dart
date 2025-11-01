import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_text_field.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
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
              Text('Forgot Password?',
                  style: TextStyles.bold16
                      .copyWith(color: ColorManager.neutralDark)),
              SizedBox(height: 10),
              Text(
                'Enter Your Email',
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
                height: 10,
              ),
              CustomButton(onPressed: () {}, text: 'Send Reset Email'),
              SizedBox(
                height: 5,
              ),



            ],
          ),
        ),
      ),
    );
  }
}
