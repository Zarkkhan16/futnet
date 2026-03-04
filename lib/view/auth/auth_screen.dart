import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futnet/view/auth/login_screen.dart';
import 'package:futnet/view/auth/signup_screen.dart';
import 'package:futnet/widgets/buttons/custom_button.dart';
import 'package:get/get.dart';
import '../../utils/images.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.appBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 80.h,
                  left: 20.w,
                  right: 20.w,
                ),
                child: Text(
                  'ELEVATE YOU \n EXPERIENCE AT THE FOOTBALL GATHERING',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Image.asset(AppImages.stadiumBackgroundImage),
              Padding(
                padding: EdgeInsets.only(top: 40.0.h, left: 25.w, right: 25.w),
                child: CustomButton(
                  text: "Sign up",
                  onTap: () {
                    Get.to(() => const SignupScreen());
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 3.h),
                child: CustomButton(
                  text: "Login",
                  onTap: () {
                    Get.to(()=> const LoginScreen());
                  },
                  borderColor: Colors.white,
                  buttonColor: Colors.transparent,
                  borderWidth: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
