import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/controllers/forget_password_controller.dart';
import 'package:futnet/view/auth/login_screen.dart';
import 'package:futnet/widgets/baseWidget/auth_base_widget.dart';
import 'package:futnet/widgets/buttons/custom_button.dart';
import 'package:futnet/widgets/richText/rich_text_with_tap.dart';
import 'package:futnet/widgets/textfields/custom_textfield.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final forgetPasswordController = Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return AuthBaseWidget(
      headingText: "FORGET PASSWORD\n",
      headingTextSize: 32,
      subTitleText:
          "Provide your account's email for which your want \nto reset your password!",
      subTitleTextSize: 14,
      child: Column(
        children: [
          SizedBox(height: 80.h),
          CustomTextField(
            textLine: 1,
            borderRadius: 30,
            controller: forgetPasswordController.emailController,
            prefixIcon: Icons.email_outlined,
            hintText: 'Email',
            hintTextColor: Colors.grey[500],
            prefixIconColor: Colors.grey[500],
            filled: true,
            filledColor: Colors.grey[200],
          ),
          SizedBox(
            height: 6.h,
          ),
          CustomButton(
            text: 'Send Verification Code',
            onTap: () {},
          ),
          SizedBox(
            height: 150.h,
          ),
          RichTextWithTap(
            text1: "Already have an account? ",
            text2: "Login",
            onTap: () => Get.off(() => const LoginScreen()),
          ),
        ],
      ),
    );
  }
}
