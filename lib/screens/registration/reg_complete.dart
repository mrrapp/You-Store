import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/color.dart';

import '../home/home_member.dart';

class RegistrationCompleted extends StatefulWidget {
  const RegistrationCompleted({super.key});

  @override
  State<RegistrationCompleted> createState() => _RegistrationCompletedState();
}

class _RegistrationCompletedState extends State<RegistrationCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 10),
              //Pictures
              Image.asset(
                'assets/images/glasses_blur.png',
              ),

              // Welcome text
              //
              const Text(
                'Woohoo!',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
              ),
              const SizedBox(height: 12),
              const Text(
                'Registration complete! Get ready to have the best shopping experiences of your life.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: neutralBlackText,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 150),

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
                        builder: (context) => const HomeMember(),
                      ));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24, bottom: 50),
                  child: Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: lightYellow,
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        "Let the shopping begin!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
