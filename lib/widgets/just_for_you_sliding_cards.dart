import 'package:flutter/material.dart';

import '../utilities/color.dart';

class MainMenuSlidingCard extends StatelessWidget {
  const MainMenuSlidingCard(
      {super.key,
      required this.productName,
      required this.price,
      required this.card_Color,
      required this.productImageURL,
      required this.productCategory});
  final String productName;
  final String productCategory;
  final String productImageURL;
  final String price;
  final Color card_Color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 206,
        height: 357,
        decoration: BoxDecoration(
            color: card_Color, borderRadius: BorderRadius.circular(10)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Image.asset('assets/icons/heart.png'),
                  )
                ],
              ),

              //product image
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Image.asset(productImageURL),
                ),
              ),
              // text title and price column
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
                child: Column(
                  children: [
                    // product name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blackDarkText,
                              fontFamily: 'Lora'),
                        ),
                        Text(
                          productCategory,
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: blackMediumDarkText,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Inter',
                  color: blackMediumDarkText,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
      ),
    );
  }
}
