import 'package:ecom/screens/onboarding/onboarding_three.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilities/color.dart';

class OnboardScreenTwo extends StatefulWidget {
  const OnboardScreenTwo({super.key});

  @override
  State<OnboardScreenTwo> createState() => _OnboardScreenTwoState();
}

class _OnboardScreenTwoState extends State<OnboardScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:  SingleChildScrollView(
            child: Padding(
            padding: EdgeInsets.only(
                left: 24.0.w, right: 24.w, top: 20.h, bottom: 56.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //icon
                    Image.asset('assets/images/black_shop_logo.png'),
                    const Text(
                      'Skip',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: neutralBlackText,
                          fontFamily: 'Inter',
                          fontSize: 14),
                    )
                  ],
                ),
          
                SizedBox(height: 56.h),
                //Image
                Image.asset('assets/images/onboard_two.png'),
                SizedBox(height: 56.h),
          
                //Text: Curated products by our professionals.
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First column for the curated product list
                    Column(children: [Text(
                      "Curated products by our professionals.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w600,
                          fontSize: 32.sp),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Tell us what you like. No, really, it helps a bunch when we serve you some great products. You just keep doing your thing.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: neutralBlackText,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp),
                    ),],),
                    
          
                    SizedBox(height: 70.h),
                    //Next Button
                    const Longbutton(
                        text: 'Next',
                        textColor: white,
                        color: lightDarkBlue,
                        screenToNavigateTo: OnboardScreenThree()),
                  ],
                )
              ],
            ),
                  ),
          ),
      
      ),
    );
  }
}
