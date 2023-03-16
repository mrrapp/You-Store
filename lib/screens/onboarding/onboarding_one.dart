import 'package:ecom/screens/onboarding/onboarding_two.dart';

import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';

import '../../utilities/color.dart';

class OnboardScreenOne extends StatefulWidget {
  const OnboardScreenOne({super.key});

  @override
  State<OnboardScreenOne> createState() => _OnboardScreenOneState();
}

class _OnboardScreenOneState extends State<OnboardScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //icon
                Image.asset('assets/images/black_shop_logo.png'),
                const Text(
                  'Skip',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                )
              ],
            ),
          ),
          const SizedBox(height: 48),
          Image.asset('assets/images/onboard_one.png'),
          const SizedBox(height: 56),
          const Text(
            """Irrelevant 
results again?""",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
          ),
          const SizedBox(height: 16),
          const Text(
            'Habitual sends you relevant items based off of your habits and interests.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: neutralBlackText,
                fontWeight: FontWeight.w400,
                fontSize: 16),
          ),
          const SizedBox(height: 70),

          //Next Button
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Longbutton(
              color: lightDarkBlue,
              text: 'Next',
              screenToNavigateTo: OnboardScreenTwo(),
            ),
          )
        ],
      )),
    );
  }
}
