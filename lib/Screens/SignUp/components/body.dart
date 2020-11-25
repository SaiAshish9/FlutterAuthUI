import 'package:authui/Screens/Login/login_screen.dart';
import 'package:authui/components/already_have_an_account_check.dart';
import 'package:authui/components/rounded_button.dart';
import 'package:authui/components/rounded_input_field.dart';
import 'package:authui/components/rounded_password_field.dart';
import 'package:authui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'background.dart';
import 'or_divider.dart';
import 'social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "SIGNUP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        SvgPicture.asset("assets/icons/signup.svg", height: size.height * 0.35),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(onChanged: (value) {}),
        RoundedButton(text: "SIGNUP", press: () {}),
        SizedBox(
          height: size.height * 0.03,
        ),
        AlreadyHavaAnAccountCheck(
          login: false,
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
        ),
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(iconsrc: "assets/icons/facebook.svg", press: () {}),
            SocialIcon(iconsrc: "assets/icons/twitter.svg", press: () {}),
            SocialIcon(iconsrc: "assets/icons/google-plus.svg", press: () {})
          ],
        )
      ],
    ));
  }
}
