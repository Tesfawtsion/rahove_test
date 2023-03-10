import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rahove_ui/HomePage/home.dart';
import 'package:rahove_ui/Signup/signup_screen.dart';
import 'package:rahove_ui/constants.dart';

import '../Signup/component/bottom_divider.dart';
import '../Signup/component/social_icons.dart';
import '../component/already_have_account.dart';
import '../component/rounded_button.dart';
import 'components/rounded_paswored_feild.dart';
import 'components/roundedinput_feild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get started',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                  color: kprimarycolor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'become a member of our platform',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15.h,
            ),
            RoundedInputFeild(
              hintText: 'Your Email',
              onChanged: ((value) {}),
              text: 'Email',
            ),
            SizedBox(
              height: 15.h,
            ),
            RoundedPaswordFeild(
              onChanged: (value) {},
              text: 'Password',
            ),
            const ForgetPassword(),
            SizedBox(
              height: 20.h,
            ),
            RoundedButton(
              text: 'Log in',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            const BottomDevider(
              text: 'Log in with',
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SocialMediaIcons(
                  iconSrc: 'lib/icons/facebook.png',
                  press: () {},
                ),
                SocialMediaIcons(
                  iconSrc: 'lib/icons/google.png',
                  press: () {},
                ),
                SocialMediaIcons(
                  iconSrc: 'lib/icons/apple.png',
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            AlreadyHaveAccount(
              pressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignupScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 40.w,
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Forget Password? ',
            style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w400,
                fontSize: 13.sp),
          )),
    );
  }
}
