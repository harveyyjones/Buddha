import 'dart:ui';

import 'package:buddha/UI%20Helpers/blur_screen_maker.dart';
import 'package:buddha/UI%20Helpers/constants.dart';
import 'package:buddha/UI/login_screen.dart';
import 'package:buddha/UI/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assetss/stars.png"), fit: BoxFit.fill)),
      child: Column(children: [
        SizedBox(
          height: 180,
        ),
        Image(image: AssetImage("assetss/landingFirstTitle.png")),
        SizedBox(
          height: 70,
        ),
        Image(
          image: AssetImage(
            "assetss/secondLandingTitle.png",
          ),
          fit: BoxFit.fill,
          height: screenlHeight / 25,
          width: screenWidth / 1.3,
        ),
        SizedBox(
          height: 380,
        ),
        LoginAndSignupButton(text: "Login", direction: LoginPage()),
        SizedBox(
          height: 30,
        ),
        LoginAndSignupButton(text: "Sign Up", direction: RegisterPage()),
      ]),
    );
  }
}

class LoginAndSignupButton extends StatelessWidget {
  LoginAndSignupButton({Key? key, required this.text, required this.direction})
      : super(key: key);
  var direction;
  String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          minimumSize: MaterialStateProperty.all(
              Size(screenWidth / 3, screenlHeight / 17))),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => direction,
        ));
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 23),
      ),
    );
  }
}
