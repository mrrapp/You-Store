import 'package:flutter/material.dart';

import '../../utilities/color.dart';
import '../../widgets/interest_checkbox.dart';
import '../../widgets/short_button.dart';
import '../splash/splash.dart';

class FourthRegistrationPage extends StatefulWidget {
  const FourthRegistrationPage({super.key});

  @override
  State<FourthRegistrationPage> createState() => _FourthRegistrationPageState();
}

class _FourthRegistrationPageState extends State<FourthRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Step 4: Interest Details ',
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
                        endIndent: 65,
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 40),
            Column(
              children: const [
//Big add photo text
                Text(
                  'Let\'s dig deeper!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16),
                // small text sentence
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    """We have some recommended options for the interests that you have chosen.""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: neutralBlackText,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                //Title: Music Interest Check list
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text("Music",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                ),

                // Check list Music
                InterestCheckbox(interest: 'Vinyl'),
                InterestCheckbox(interest: 'Live Music'),
                InterestCheckbox(interest: 'Hip Hop'),
                InterestCheckbox(interest: 'Instruments'),
                Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 24, right: 24),
                  child: Text(
                    'See all 24 options',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: blackDarkText),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Horizontal Bar
            const Divider(
              color: Colors.black,
              height: 1,
              thickness: 1,
              indent: 24,
              endIndent: 24,
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                //Title: Music Interest Check list
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text("Fashion",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                ),

                // Check list Music
                InterestCheckbox(interest: 'Sneakers'),
                InterestCheckbox(interest: 'Glasses'),
                InterestCheckbox(interest: 'Dresses'),
                InterestCheckbox(interest: 'Minimalism'),
                Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 24, right: 24),
                  child: Text(
                    'See all 24 options',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: blackDarkText),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Horizontal Bar
            const Divider(
              color: Colors.black,
              height: 1,
              thickness: 1,
              indent: 24,
              endIndent: 24,
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                //Title: Music Interest Check list
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text("Gaming",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                ),

                // Check list Music
                InterestCheckbox(interest: 'Playstation'),
                InterestCheckbox(interest: 'Xbox'),
                InterestCheckbox(interest: 'PC'),
                InterestCheckbox(interest: 'RPG\'s'),
                Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 24, right: 24),
                  child: Text(
                    'See all 24 options',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: blackDarkText),
                  ),
                ),
              ],
            ),
// Bottom Section
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
