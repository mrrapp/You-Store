import 'package:ecom/screens/onboarding/onboarding_one.dart';
import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  // Glasses
                  Positioned(
                    left: 92,
                    right: 197,
                    top: 0,
                    // width: 111,
                    //  height: 73,
                    child: Image.asset(
                      'assets/images/glasses_blur.png',
                    ),
                  ),
                  // Red card
                  Positioned(
                      left: 291,
                      top: 98,
                      //right: ,
                      width: 67,
                      height: 113,
                      child: Image.asset('assets/images/book_picture.png')),
                  // car picture
                  Positioned(
                      left: 18,
                      top: 137,
                      width: 87,
                      height: 91,
                      child: Image.asset('assets/images/car_blur.png')),
                  // Welcome text
                  const Positioned(
                    left: 24,
                    top: 272,
                    width: 342,
                    height: 150,
                    child: Text(
                      """Welcome to the world’s largest you store.""",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          fontFamily: 'Lora'),
                    ),
                  ),
                  // tv
                  Positioned(
                      // width: 116,
                      // height: 116,
                      left: 250,
                      right: 24,
                      top: 448,
                      child: Image.asset('assets/images/tv.png')),
                  //head phones
                  Positioned(
                      left: 232,
                      top: 613,
                      right: 48,
                      bottom: 106,
                      //  width: 110,
                      //height: 125,
                      child: Image.asset('assets/images/head_phon.png')),
                  // magazine picture
                  Positioned(
                      left: 40,
                      right: 277,
                      top: 552,
                      child: Image.asset('assets/images/magazine.png')),
                  // button
                  Positioned(
                      //width: 342,
                      //height: 82,
                      left: 24,
                      right: 24,
                      //bottom: 58,
                      top: 704,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //button
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const OnboardScreenOne(),
                                  ));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              child: Container(
                                height: 48,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: lightYellow,
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 16, bottom: 16),
                                  child: Text(
                                    "Let's begin",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // already have an account
                          const Padding(
                            padding: EdgeInsets.only(bottom: 0.0),
                            child: Text(
                              'Already have an account?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
