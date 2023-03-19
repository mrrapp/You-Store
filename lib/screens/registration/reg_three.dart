import 'package:flutter/material.dart';

import '../../utilities/color.dart';

import '../../widgets/interest_card.dart';
import '../../widgets/short_button.dart';
import '../splash/splash.dart';
import 'reg_four.dart';

class ThirdRegistrationPAge extends StatefulWidget {
  const ThirdRegistrationPAge({super.key});

  @override
  State<ThirdRegistrationPAge> createState() => _ThirdRegistrationPAgeState();
}

class _ThirdRegistrationPAgeState extends State<ThirdRegistrationPAge> {
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
                        'Step 3: Interest',
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
                        endIndent: 200,
                      ),
                    ],
                  )
                ],
              ),
            ),

            // progress bar
            const SizedBox(height: 40),

            //Big add photo text
            const Padding(
              padding:
                  EdgeInsets.only(top: 40.0, bottom: 40, left: 24, right: 24),
              child: Text(
                'Get started by picking some interests.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 16),
// Sliding card
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InterestCard(
                      color: purpleCard,
                      cardPicture: 'assets/images/book_card.png'),
                  InterestCard(
                    color: redCard,
                    cardPicture: 'assets/images/fashion_card.png',
                  ),
                  InterestCard(
                    color: blueCard,
                    cardPicture: 'assets/images/car_card.png',
                  ),
                  InterestCard(
                      color: purpleCard,
                      cardPicture: 'assets/images/book_card.png'),
                  InterestCard(
                    color: redCard,
                    cardPicture: 'assets/images/fashion_card.png',
                  ),
                  InterestCard(
                    color: blueCard,
                    cardPicture: 'assets/images/car_card.png',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 237.0, bottom: 55),
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
                      pageToNavigateTo: FourthRegistrationPage()),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
