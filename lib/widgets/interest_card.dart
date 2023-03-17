import 'package:ecom/utilities/color.dart';
import 'package:flutter/material.dart';

class InterestCard extends StatelessWidget {
  const InterestCard({super.key, required this.color, this.cardPicture});
  final Color color;
  final String? cardPicture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Image.asset(cardPicture!),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                children: [
                  const Text(
                    'Fashion',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: lightDarkBlue),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    height: 36,
                    width: 44,
                    decoration: BoxDecoration(
                        border: Border.all(color: lightDarkBlue, width: 1),
                        borderRadius: BorderRadius.circular(4)),
                    child: const Center(
                      child: Text(
                        'Add',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: lightDarkBlue),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
