import 'package:ecom/screens/onboarding/onboarding_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utilities/color.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            // Glasses
            Positioned(
              left: 92.w,
              right: 197.w,
              top: 0.h,
              // width: 111,
              //  height: 73,
              child: Image.asset(
                'assets/images/glasses_blur.png',
              ),
            ),
            // Red card
            Positioned(
                left: 291.w,
                top: 98.h,
                //right: ,
                width: 67.w,
                height: 113.h,
                child: Image.asset('assets/images/book_picture.png')),
            // car picture
            Positioned(
                left: 18.w,
                top: 137.h,
                width: 87.w,
                height: 91.h,
                child: Image.asset('assets/images/car_blur.png')),
            // Welcome text
            Positioned(
              left: 24.w,
              top: 272.h,
              width: 342.w,
              // height: 150.h,
              child: Text(
                """Welcome to the world’s largest you store.""",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 40.sp,
                    fontFamily: 'Lora'),
              ),
            ),
            // tv
            Positioned(
                // width: 116,
                // height: 116,
                left: 250.w,
                right: 24.w,
                top: 448.h,
                child: Image.asset('assets/images/tv.png')),
            //head phones
            Positioned(
                left: 232.w,
                top: 613.h,
                right: 48.w,
                bottom: 106.h,
                //  width: 110,
                //height: 125,
                child: Image.asset('assets/images/head_phon.png')),
            // magazine picture
            Positioned(
                left: 40.w,
                right: 277.w,
                top: 552.h,
                child: Image.asset('assets/images/magazine.png')),
            // button
            Positioned(
                //width: 342,
                //height: 82,
                left: 24.w,
                right: 24.w,
                //bottom: 58,
                top: 704.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnboardScreenOne(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child: Container(
                          height: 48.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: lightYellow,
                              borderRadius: BorderRadius.circular(6.r)),
                          child: Center(
                            child: Text(
                              "Let's begin",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),

                    // already have an account
                    Text(
                      'Already have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
