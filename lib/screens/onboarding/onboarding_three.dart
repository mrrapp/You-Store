import 'package:ecom/screens/registration/reg_one.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecom/utilities/color.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';

class OnboardScreenThree extends StatefulWidget {
  const OnboardScreenThree({super.key});

  @override
  State<OnboardScreenThree> createState() => _OnboardScreenThreeState();
}

class _OnboardScreenThreeState extends State<OnboardScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: 24.0.w, right: 24.w, top: 20.h, bottom: 56.h),
          child: Column(
            children: [
              // Icon and exit
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //icon
                  Image.asset('assets/images/black_shop_logo.png'),
                  Text(
                    'Exit',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: neutralBlackText,
                        fontFamily: 'Inter',
                        fontSize: 14.sp),
                  )
                ],
              ),

              SizedBox(height: 56.h),
              //Image
              Image.asset('assets/images/onboard-three.png'),
              SizedBox(height: 56.h),
              //Text: Curated products by our professionals.
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // free shipping services
                  Column(children: [Text(
                    "Free shipping and concierge services. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Lora',
                        color: blackDarkText,
                        fontWeight: FontWeight.w600,
                        fontSize: 32.sp),
                  ),

                  SizedBox(height: 16.sp),
                  Text(
                    'No fees, free shipping and amazing customer service. We’ll get you your package within 2 business days no questions asked!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: neutralBlackText,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),],),
                  

                  SizedBox(height: 70.h),

                  // Button
                  const Longbutton(
                      text: 'Next',
                      textColor: blackDarkText,
                      color: lightYellow,
                      screenToNavigateTo: RegistrationFirstPage()),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
