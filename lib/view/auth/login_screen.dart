import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/controllers/login_controller.dart';
import 'package:futnet/view/auth/forget_password_screen.dart';
import 'package:futnet/view/auth/signup_screen.dart';
import 'package:futnet/view/homeScreen/onboard_screen.dart';
import 'package:futnet/widgets/baseWidget/auth_base_widget.dart';
import 'package:futnet/widgets/buttons/custom_button.dart';
import 'package:futnet/widgets/richText/rich_text_with_tap.dart';
import 'package:futnet/widgets/textfields/custom_textfield.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return AuthBaseWidget(
      headingText: 'Welcome back\n',
      subTitleText: 'Enter your credential to login',
      child: Column(
        children: [
          SizedBox(height: 90.h),
          CustomTextField(
            textLine: 1,
            borderRadius: 30,
            controller: loginController.userNameController,
            prefixIcon: Icons.person_outline_sharp,
            hintText: 'Username',
            hintTextColor: Colors.grey[500],
            prefixIconColor: Colors.grey[500],
            filled: true,
            filledColor: Colors.grey[200],
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomTextField(
            textLine: 1,
            borderRadius: 30,
            controller: loginController.passwordController,
            prefixIcon: Icons.lock_open_rounded,
            hintText: 'Password',
            hintTextColor: Colors.grey[500],
            prefixIconColor: Colors.grey[500],
            filled: true,
            filledColor: Colors.grey[200],
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomButton(
            text: 'Login',
            onTap: () {
              Get.offAll(() => const OnboardScreen());
            },
          ),
          SizedBox(height: 70.h),
          GestureDetector(
            onTap: () => Get.to(() => ForgetPasswordScreen()),
            child: Text(
              'Forget Password?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blue[400],
              ),
            ),
          ),
          SizedBox(height: 90.h),
          RichTextWithTap(
            text1: "Don't have an account? ",
            text2: 'Sign up',
            onTap: () => Get.off(() => const SignupScreen()),
          ),
        ],
      ),
    );
  }
}
