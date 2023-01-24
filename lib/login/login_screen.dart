import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:rahove_ui/HomePage/home.dart';
import 'package:rahove_ui/Signup/signup_screen.dart';
import 'package:rahove_ui/constants.dart';
import 'package:rahove_ui/login/components/textfeild_container.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Get started',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: kprimarycolor),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Text('become a member of our platform'),
          SizedBox(
            height: size.height * 0.04,
          ),
          RoundedInputFeild(
            hintText: 'Your Email',
            onChanged: ((value) {}),
            text: 'Email',
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedPaswordFeild(
            onChanged: (value) {},
            text: 'Password',
          ),
          ForgetPassword(),
          SizedBox(
            height: size.height * 0.04,
          ),
          RoundedButton(
            text: 'Log in',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
          ),
          SizedBox(
            height: size.height * 0.045,
          ),
          BottomDevider(
            text: 'Log in with',
          ),
          SizedBox(
            height: size.height * 0.022,
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
            height: size.height * 0.03,
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
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Forget Password? ',
            style: TextStyle(
                color: Colors.grey.shade600, fontWeight: FontWeight.w400),
          )),
    );
  }
}
