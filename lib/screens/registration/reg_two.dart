import 'dart:ui';

import 'package:ecom/widgets/long_chip_button.dart';
import 'package:flutter/material.dart';

import '../../utilities/color.dart';
import '../../widgets/short_button.dart';
import '../splash/splash.dart';
import 'reg_three.dart';

class SecondRegistrationPage extends StatefulWidget {
  const SecondRegistrationPage({super.key});

  @override
  State<SecondRegistrationPage> createState() => _SecondRegistrationPageState();
}

class _SecondRegistrationPageState extends State<SecondRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 16),
            // Row with step 1 and personalization
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Step 2: Your Goals
                      const Text(
                        'Step 2: Your Goals ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
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
                  // Progress Bar
                  const SizedBox(height: 10),
                  Stack(
                    children: const [
                      // light progress line
                      Divider(
                        thickness: 4,
                        color: Color.fromRGBO(234, 234, 234, 1),
                      ),
                      // Dark progress line
                      Divider(
                        thickness: 4,
                        color: blackDarkText,
                        endIndent: 280,
                      ),
                    ],
                  )
                ],
              ),
            ),

            // progress bar
            const SizedBox(height: 40),

            //Big add photo text
            const Text(
              'What do you want to achieve with Habitual?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            // small text sentence
            const Text(
              """This will help us make a unique experience that is 
              just for you.""",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: neutralBlackText,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            const SizedBox(height: 40),
            // Chip buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: const [
                  LongChipButton(
                    text: 'Discover New Products',
                    color: chipGreyButton,
                    textColor: chipDarkText,
                  ),
                  LongChipButton(
                    text: 'Make monthly shopping easier',
                    color: chipDarkButton,
                    textColor: white,
                  ),
                  LongChipButton(
                    text: 'Relevant Recommendations',
                    color: chipGreyButton,
                    textColor: chipDarkText,
                  ),
                  LongChipButton(
                    text: 'Get notified of deals',
                    color: chipGreyButton,
                    textColor: chipDarkText,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 300.0, bottom: 55),
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
      ),
    );
  }
}
