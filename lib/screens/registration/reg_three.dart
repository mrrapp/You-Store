import 'package:flutter/material.dart';

import '../../utilities/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/interest_card.dart';
import '../../widgets/short_button.dart';
import '../splash/splash.dart';
import 'reg_four.dart';

class ThirdRegistrationPAge extends StatefulWidget {
  const ThirdRegistrationPAge({super.key});

  @override
  State<ThirdRegistrationPAge> createState() => _ThirdRegistrationPAgeState();
}

class _ThirdRegistrationPAgeState extends State<ThirdRegistrationPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
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
                          'Step 3: Interest',
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
                        endIndent: 200,
                      ),
                    ],
                  )
                ],
              ),
           

            // progress bar
             SizedBox(height: 40.sp),

            //Big add photo text
             Padding(
              padding:
                  EdgeInsets.only(top: 40.0.h, bottom: 40.h, left: 24.w, right: 24.w),
              child: Text(
                'Get started by picking some interests.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                ),
              ),
            ),
             SizedBox(height: 16.h),
// Sliding card
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InterestCard(
                    productTitle: 'Reading',
                      color: purpleCard,
                      cardPicture: 'assets/images/book_card.png'),
                  InterestCard(
                    productTitle: 'Fashion',
                    color: redCard,
                    cardPicture: 'assets/images/fashion_interest.png',
                  ),
                  InterestCard(
                    productTitle: 'Music',
                    color: blueCard,
                    cardPicture: 'assets/images/music_interest.png',
                  ),
                  InterestCard(
                    productTitle: 'Reading',
                      color: purpleCard,
                      cardPicture: 'assets/images/book_card.png'),
                  InterestCard(
                    productTitle: 'Fashion',
                    color: redCard,
                    cardPicture: 'assets/images/fashion_interest.png',
                  ),
                  InterestCard(
                    productTitle: 'Music',
                    color: blueCard,
                    cardPicture: 'assets/images/music_interest.png',
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.h),

            Padding(
              padding:  EdgeInsets.only(
                  left: 24.0.w, right: 24.0.w, top: 120.0.h, bottom: 55.h),
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
                 const ShortButton(
                      text: 'Continue',
                      color: lightDarkBlue,
                      buttonIcon: Icons.arrow_right,
                      pageToNavigateTo: FourthRegistrationPage()),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
