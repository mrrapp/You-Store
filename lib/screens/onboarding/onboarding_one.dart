import 'package:ecom/screens/onboarding/onboarding_two.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';

import '../../utilities/color.dart';

class OnboardScreenOne extends StatefulWidget {
  const OnboardScreenOne({super.key});

  @override
  State<OnboardScreenOne> createState() => _OnboardScreenOneState();
}

class _OnboardScreenOneState extends State<OnboardScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: 48.0.h, left: 24.w, right: 24.w, bottom: 56.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //icon
                  Image.asset('assets/images/black_shop_logo.png'),
                  Text(
                    'Skip',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        color: neutralBlackText,
                        fontSize: 14.sp),
                  )
                ],
              ),
              SizedBox(height: 56.h),
              Image.asset('assets/images/onboard_one.png'),
              SizedBox(height: 56.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      """Irrelevant results again?""",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w600,
                          fontSize: 32.sp),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Habitual sends you relevant items based off of your habits and interests.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: neutralBlackText,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                  SizedBox(height: 70.h),

                  //Next Button
                  const Longbutton(
                    color: lightDarkBlue,
                    textColor: white,
                    text: 'Next',
                    screenToNavigateTo: OnboardScreenTwo(),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
