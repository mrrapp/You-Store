import 'package:flutter/material.dart';

import '../../utilities/color.dart';
import '../../widgets/long_chip_button.dart';
import '../../widgets/short_button.dart';
import '../splash/splash.dart';

class ThirdRegistrationPAge extends StatefulWidget {
  const ThirdRegistrationPAge({super.key});

  @override
  State<ThirdRegistrationPAge> createState() => _ThirdRegistrationPAgeState();
}

class _ThirdRegistrationPAgeState extends State<ThirdRegistrationPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 16),
          // Row with step 1 and personalization
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Step 2: Your Goals
                const Text(
                  'Step 3: Interests',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Intro(),
                        ));
                  },
                  child: const Text(
                    'Exit',
                    style: TextStyle(
                        color: neutralBlackText,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),

          // progress bar
          const SizedBox(height: 40),

          //Big add photo text
          const Text(
            'Get started by picking some interests.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          
          
          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, right: 24.0, top: 250.0, bottom: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                // Skip text
                Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: neutralBlackText),
                ),

                // Continue Button
                ShortButton(
                    text: 'Continue',
                    color: lightDarkBlue,
                    buttonIcon: Icons.arrow_right,
                    pageToNavigateTo: ThirdRegistrationPAge()),
              ],
            ),
          )
        ],
      )),
    );
  }
}
