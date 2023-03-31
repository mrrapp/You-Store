import 'package:ecom/screens/splash/splash.dart';
import 'package:ecom/widgets/short_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utilities/color.dart';
import 'reg_two.dart';

class RegistrationFirstPage extends StatefulWidget {
  const RegistrationFirstPage({super.key});

  @override
  State<RegistrationFirstPage> createState() => _RegistrationFirstPageState();
}

class _RegistrationFirstPageState extends State<RegistrationFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20.h,),
            // Row with step 1 and personalization
            
                  // Title and progress bar
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // parent column above
                    
                children: [
                  Column(children: [Padding(
                    padding:  EdgeInsets.symmetric(horizontal:24.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Step 2: Your Goals
                        Text(
                          'Step 1: Personalization ',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: blackDarkText,
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
                                color: neutralBlackText,
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Progress Bar
                  SizedBox(height: 12.h),
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
                        endIndent: 350,
                      ),
                    ],
                  )
                ],
              ),
            

            SizedBox(height: 40.h),
// Column for body
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Big add photo text
                Text(
                  'Add a photo.',
                  style: TextStyle(
                      color: blackDarkText,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp),
                ),
                SizedBox(height: 16.h),
                // small text sentence
                Text(
                  """Add a photo so other members 
know who you are.""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: neutralBlackText,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                ),
                SizedBox(height: 40.h),
                // Photo icon
                SizedBox(
                    child: Padding(
                  padding: EdgeInsets.all(20.0.sp),
                  child: Image.asset(
                    'assets/images/user_icon.png',
                  ),
                )),],),
                  

                SizedBox(height: 300.h),
                // Bottom Row

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
                            fontFamily: 'Inter',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: neutralBlackText),
                      ),

                      // Upload Photo Button
                      const ShortButton(
                          text: 'Upload photo',
                          color: lightDarkBlue,
                          pageToNavigateTo: SecondRegistrationPage()),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
