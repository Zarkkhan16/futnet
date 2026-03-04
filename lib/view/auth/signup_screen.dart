import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/view/auth/login_screen.dart';
import 'package:futnet/widgets/baseWidget/auth_base_widget.dart';
import 'package:futnet/widgets/buttons/custom_button.dart';
import 'package:futnet/widgets/richText/rich_text_with_tap.dart';
import 'package:futnet/widgets/textfields/custom_textfield.dart';
import 'package:get/get.dart';
import '../../controllers/signup_controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final signupController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return AuthBaseWidget(
      headingText: 'Sign up\n',
      subTitleText: 'Create you account',
      child: Column(
        children: [
          SizedBox(height: 50.h),
          CustomTextField(
            textLine: 1,
            borderRadius: 30,
            controller: signupController.userNameController,
            prefixIcon: Icons.person_outline_sharp,
            hintText: 'Username',
            hintTextColor: Colors.grey[500],
            prefixIconColor: Colors.grey[500],
            filled: true,
            filledColor: Colors.grey[200],
          ),
          SizedBox(height: 6.h),
          CustomTextField(
            textLine: 1,
            borderRadius: 30,
            controller: signupController.emailController,
            prefixIcon: Icons.email_outlined,
            hintText: 'Email',
            hintTextColor: Colors.grey[500],
            prefixIconColor: Colors.grey[500],
            filled: true,
            filledColor: Colors.grey[200],
          ),
          SizedBox(height: 6.h),
          CustomTextField(
            textLine: 1,
            borderRadius: 30,
            controller: signupController.passwordController,
            prefixIcon: Icons.lock_open_rounded,
            hintText: 'Password',
            hintTextColor: Colors.grey[500],
            prefixIconColor: Colors.grey[500],
            filled: true,
            filledColor: Colors.grey[200],
          ),
          SizedBox(height: 6.h),
          CustomTextField(
            textLine: 1,
            borderRadius: 30,
            controller: signupController.passwordConfirmController,
            prefixIcon: Icons.lock_outline_rounded,
            hintText: 'Conform Password',
            hintTextColor: Colors.grey[500],
            prefixIconColor: Colors.grey[500],
            filled: true,
            filledColor: Colors.grey[200],
          ),
          SizedBox(height: 8.h),
          CustomButton(
            text: "Sign up",
            onTap: () {},
          ),
          SizedBox(height: 15.h),
          const Text(
            'Or',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.h),
          CustomButton(
            text: "Sign In with Google",
            onTap: () {},
            buttonColor: Colors.white,
            borderColor: Colors.blue,
            textColor: Colors.blue[300],
          ),
          SizedBox(height: 4.h),
          CustomButton(
            text: "Sign In with Facebook",
            onTap: () {},
            buttonColor: Colors.blue[800],
            textColor: Colors.white,
          ),
          SizedBox(height: 20.h),
          RichTextWithTap(
            text1: 'Already have an account? ',
            text2: 'Login',
            onTap: () => Get.off(() => const LoginScreen()),
          ),
        ],
      ),
    );
  }
}
