import 'package:ecom/screens/onboarding/onboarding_one.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Column for upper part
            Column(
              children: [
                const SizedBox(height: 10),
                //Pictures
                Image.asset(
                  'assets/images/Layer_Blur.png',
                ),

                // Welcome text
                //
                const Text(
                  'Welcome to the world’s largest you store.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
                ),
                // const SizedBox(height: 150),

                //   Image.asset(
                //   'assets/images/tv.png',
                // ),

                Image.asset(
                  'assets/images/head_phon.png',
                ),
              ],
            ),

            // Column for button
            Column(
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
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: lightYellow,
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Text(
                          "Let's begin",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lora(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // already have an account
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Text(
                    'Already have an account?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 14),
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
