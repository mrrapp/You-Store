import 'package:ecom/screens/registration/reg_one.dart';
import 'package:ecom/screens/splash/splash.dart';
import 'package:ecom/utilities/color.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';

class OnboardScreenThree extends StatefulWidget {
  const OnboardScreenThree({super.key});

  @override
  State<OnboardScreenThree> createState() => _OnboardScreenThreeState();
}

class _OnboardScreenThreeState extends State<OnboardScreenThree> {
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
          //Image
          Image.asset('assets/images/onboard-three.png'),
          const SizedBox(height: 56),
          //Text: Curated products by our professionals.
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Free shipping and concierge services. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: neutralBlackText,
                  fontWeight: FontWeight.w600,
                  fontSize: 32),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'No fees, free shipping and amazing customer service. We’ll get you your package within 2 business days no questions asked!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
          const SizedBox(height: 70),

          // Button
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Longbutton(
                text: 'Next',
                color: lightDarkBlue,
                screenToNavigateTo: RegistrationFirstPage()),
          ),
        ],
      )),
    );
  }
}
