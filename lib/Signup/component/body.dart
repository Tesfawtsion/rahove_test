import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove_ui/Signup/component/social_icons.dart';
import 'package:rahove_ui/component/already_have_account.dart';
import 'package:rahove_ui/login/components/rounded_paswored_feild.dart';
import 'package:rahove_ui/login/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/rounded_button.dart';
import '../../constants.dart';
import '../../login/components/roundedinput_feild.dart';
import 'bottom_divider.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Welcome',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 25.sp,
                color: kprimarycolor)),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'become a member of our platform',
          style: GoogleFonts.poppins(fontSize: 14.sp),
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
          height: 5.h,
        ),
        RoundedInputFeild(
          hintText: 'Your name',
          onChanged: ((value) {}),
          text: 'Full name',
        ),
        SizedBox(
          height: 5.h,
        ),
        RoundedPaswordFeild(onChanged: (value) {}, text: 'Password'),
        SizedBox(
          height: 20.h,
        ),
        RoundedButton(
          text: 'Sign Up',
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        BottomDevider(
          text: 'Sign up with',
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
              return LoginScreen();
            }));
          },
          login: false,
        ),
      ],
    );
  }
}
