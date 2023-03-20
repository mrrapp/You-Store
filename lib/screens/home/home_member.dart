import 'dart:ui';

import 'package:ecom/utilities/color.dart';
import 'package:flutter/material.dart';

class HomeMember extends StatefulWidget {
  const HomeMember({super.key});

  @override
  State<HomeMember> createState() => _HomeMemberState();
}

class _HomeMemberState extends State<HomeMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 10),
          // Logo icon and cart icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // logo
                Image.asset('assets/logo/Habitual_logo.png'),

                // cart
                Image.asset('assets/logo/shopping-cart.png'),
              ],
            ),
          ),
          const SizedBox(height: 56),
          // Coumn for just for you and tiles

          Column(
            children: [
              // Just for you
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // just for you
                    const Text(
                      'Just for you',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: blackDarkText),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/arrow_left.png'),
                        const SizedBox(width: 48),
                        Image.asset('assets/icons/arrow_right.png')
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              //sliding tile containers
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: redCard,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [Image.asset('assets/icons/heart.png')],
                            ),
                          ),
                          //product image
                          Image.asset('assets/images/fashion_card.png'),
                          // text title and price column
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, bottom: 16),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // product name
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'The Metamorphosis',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: blackDarkText,
                                          fontFamily:
                                              'assets/fonts/Lora-Bold.ttf'),
                                    ),
                                    Text(
                                      'Franz Kafka',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: blackMediumDarkText,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(bottom: 16.0, left: 16),
                            child: Text(
                              '${12.99}',
                              style: TextStyle(
                                fontSize: 12,
                                color: blackMediumDarkText,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ]),
                  )
                ],
              )
            ],
          )

          //

          //
        ],
      )),
    );
  }
}
