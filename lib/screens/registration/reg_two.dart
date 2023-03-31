import 'dart:ui';

import 'package:ecom/widgets/long_chip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilities/color.dart';
import '../../widgets/short_button.dart';
import '../splash/splash.dart';
import 'reg_three.dart';

class SecondRegistrationPage extends StatefulWidget {
  const SecondRegistrationPage({super.key});

  @override
  State<SecondRegistrationPage> createState() => _SecondRegistrationPageState();
}

class _SecondRegistrationPageState extends State<SecondRegistrationPage> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Parent column above
            Column(children: [ // Row with step 1 and personalization
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Step 2: Your Goals
                      Text(
                        'Step 2: Your Goals ',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Intro(),
                              ));
                        },
                        child: Text(
                          'Exit',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: neutralBlackText,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                  // Progress Bar
                  SizedBox(height: 10.h),
                  Stack(
                    children: [
                      // light progress line
                      Divider(
                        thickness: 4.sp,
                        color: const Color.fromRGBO(234, 234, 234, 1),
                      ),
                      // Dark progress line
                      Divider(
                        thickness: 4.sp,
                        color: blackDarkText,
                        endIndent: 280,
                      ),
                    ],
                  )
                ],
              ),
            ),

            // progress bar
            SizedBox(height: 40.h),

            //Big add photo text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Text(
                'What do you want to achieve with Habitual?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lora',
                  color: blackDarkText,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            // small text sentence
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Text(
                """This will help us make a unique experience that is just for you.""",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: neutralBlackText,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
              ),
            ),
            SizedBox(height: 40.h),
            // Chip buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Column(
                children: const [
                 
                  LongChipButton(
                    text: 'Discover New Products',
                    color: chipGreyButton,
                    textColor: chipDarkText,
                  ),
                  LongChipButton(
                    text: 'Make monthly shopping easier',
                    color: chipDarkButton,
                    textColor: white,
                  ),
                  LongChipButton(
                    text: 'Relevant Recommendations',
                    color: chipGreyButton,
                    textColor: chipDarkText,
                  ),
                  LongChipButton(
                    text: 'Get notified of deals',
                    color: chipGreyButton,
                    textColor: chipDarkText,
                  )
                ],
              ),
            ),],),
           
            SizedBox(
              height: 100.h,
            ),

            // bottom Row with the skip action text and the continue button
            Padding(
              padding: EdgeInsets.only(
                  left: 24.0.w, right: 24.0.w, top: 0.0.h, bottom: 55.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Skip text
                  Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: neutralBlackText),
                  ),

                  // Continue Button
                  const ShortButton(
                      text: 'Continue',
                      color: lightDarkBlue,
                      buttonIcon: Icons.arrow_right,
                      pageToNavigateTo: ThirdRegistrationPAge()),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
