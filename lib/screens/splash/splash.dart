import 'package:ecom/screens/onboarding/onboarding_one.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
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
            const SizedBox(height: 200),

            //   Image.asset(
            //   'assets/images/tv.png',
            // ),

            Image.asset(
              'assets/images/head_phon.png',
            ),

            //button
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardScreenOne(),
                    ));
              },
              child: Container(
                height: 48,
                width: 342,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 227, 147, 1),
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
            //SizedBox(height: 16),

            // already have an account
            Text(
              'Already have an account?',
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 14),
            )
          ],
        ),
      )),
    );
  }
}
