import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utilities/color.dart';
import '../../widgets/interest_checkbox.dart';
import '../../widgets/short_button.dart';
import '../splash/splash.dart';
import 'reg_complete.dart';

class FourthRegistrationPage extends StatefulWidget {
  const FourthRegistrationPage({super.key});

  @override
  State<FourthRegistrationPage> createState() => _FourthRegistrationPageState();
}

class _FourthRegistrationPageState extends State<FourthRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            // Row with step 1 and personalization
             Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 24.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Step 2: Your Goals
                         Text(
                          'Step 4: Interest Details ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.sp),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Intro(),
                                ));
                          },
                          child:  Text(
                            'Exit',
                            style: TextStyle(
                                color: neutralBlackText,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Progress Bar
                 SizedBox(height: 10.h),
                  Stack(
                    children:  [
                      // light progress line
                      Divider(
                        thickness: 4.sp,
                        color:const Color.fromRGBO(234, 234, 234, 1),
                      ),
                      // Dark progress line
                      Divider(
                        thickness: 4.sp,
                        color: blackDarkText,
                        endIndent: 65,
                      ),
                    ],
                  )
                ],
              ),
           

            SizedBox(height: 40.h),
            Column(
              children:  [
//Big add photo text
                Text(
                  'Let\'s dig deeper!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                // small text sentence
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Text(
                    """We have some recommended options for the interests that you have chosen.""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: neutralBlackText,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                  ),
                ),
              ],
            ),

             SizedBox(height: 40.h),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                //Title: Music Interest Check list
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Text("Music",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp)),
                ),

                // Check list Music

              const InterestCheckBox(interest: 'Vinyl'),
              const  InterestCheckBox(interest: 'Live Music'),
              const  InterestCheckBox(interest: 'Hip Hop'),
              const  InterestCheckBox(interest: 'Instruments'),
                Padding(
                  padding: EdgeInsets.only(top: 16.0.h, left: 24.w, right: 24.w),
                  child: Text(
                    'See all 24 options',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: blackDarkText),
                  ),
                ),
              ],
            ),
             SizedBox(height: 24.h),
            // Horizontal Bar
           Divider(
              color: Colors.black,
              height: 1,
              thickness: 1.sp,
              indent: 24,
              endIndent: 24,
            ),
        SizedBox(height: 24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                //Title: Music Interest Check list
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Text("Fashion",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp)),
                ),

                // Check list Music

            const  InterestCheckBox(interest: 'Sneakers'),
            const    InterestCheckBox(interest: 'Glasses'),
            const    InterestCheckBox(interest: 'Dresses'),
            const    InterestCheckBox(interest: 'Minimalism'),
                Padding(
                  padding: EdgeInsets.only(top: 16.0.h, left: 24.w, right: 24.w),
                  child: Text(
                    'See all 24 options',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: blackDarkText),
                  ),
                ),
              ],
            ),
             SizedBox(height: 24.h),
            // Horizontal Bar
             Divider(
              color: Colors.black,
              height: 1,
              thickness: 1.sp,
              indent: 24,
              endIndent: 24,
            ),
             SizedBox(height: 24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                //Title: Music Interest Check list
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Text("Gaming",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp)),
                ),

                // Check list Music

              const  InterestCheckBox(interest: 'Playastation'),
             const   InterestCheckBox(interest: 'Xbox'),
             const   InterestCheckBox(interest: 'PC'),
            const    InterestCheckBox(interest: 'RPG\'s'),
                Padding(
                  padding: EdgeInsets.only(top: 16.0.h, left: 24.w, right: 24.w),
                  child: Text(
                    'See all 24 options',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: blackDarkText),
                  ),
                ),
              ],
            ),
// Bottom Section
            Padding(
              padding:  EdgeInsets.only(
                  left: 24.0.w, right: 24.0.w, top: 56.0.h, bottom: 55.h),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  // Skip text
                  Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: neutralBlackText),
                  ),

                  // Continue Button
                const  ShortButton(
                      text: 'Continue',
                      color: lightDarkBlue,
                      buttonIcon: Icons.arrow_right,
                      pageToNavigateTo: RegistrationCompleted()),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
