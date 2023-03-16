import 'package:ecom/screens/splash/splash.dart';
import 'package:ecom/widgets/short_button.dart';
import 'package:flutter/material.dart';

import '../../utilities/color.dart';
import 'reg_two.dart';

class RegistrationFirstPage extends StatefulWidget {
  const RegistrationFirstPage({super.key});

  @override
  State<RegistrationFirstPage> createState() => _RegistrationFirstPageState();
}

class _RegistrationFirstPageState extends State<RegistrationFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Row with step 1 and personalization
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // step 1
                  const Text(
                    'Step 1: Personalization',
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
              'Add a photo.',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            const SizedBox(height: 16),
            // small text sentence
            const Text(
              """Add a photo so other members 
know who you are.""",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: neutralBlackText,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            const SizedBox(height: 40),
            // Photo icon
            Image.asset('assets/images/user_icon.png'),
            // Bottom Row

            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 450.0, bottom: 55),
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

                  // Upload Photo Button
                  ShortButton(
                      text: 'Upload photo',
                      color: lightDarkBlue,
                      pageToNavigateTo: SecondRegistrationPage()),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
