import 'package:ecom/screens/onboarding/onboarding_three.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';

import '../../utilities/color.dart';

class OnboardScreenTwo extends StatefulWidget {
  const OnboardScreenTwo({super.key});

  @override
  State<OnboardScreenTwo> createState() => _OnboardScreenTwoState();
}

class _OnboardScreenTwoState extends State<OnboardScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 10),
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
          //Image
          Image.asset('assets/images/onboard_two.png'),
          const SizedBox(height: 56),
          //Text: Curated products by our professionals.
          const Text(
            "Curated products by our professionals.",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Tell us what you like. No, really, it helps a bunch when we serve you some great products. You just keep doing your thing.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: neutralBlackText,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
          ),
          const SizedBox(height: 70),
          //Next Button
          const Padding(
            padding: EdgeInsets.only(left: 24.0, right: 24, bottom: 50),
            child: Longbutton(
                text: 'Next',
                color: lightDarkBlue,
                screenToNavigateTo: OnboardScreenThree()),
          ),
        ],
      )),
    );
  }
}
