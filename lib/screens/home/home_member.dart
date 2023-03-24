import 'dart:ui';

import 'package:ecom/utilities/color.dart';
import 'package:ecom/widgets/category_card.dart';
import 'package:ecom/widgets/deal_cards.dart';
import 'package:ecom/widgets/my_interest_listTile.dart';
import 'package:flutter/material.dart';

import '../../widgets/interest_categories.dart';
import '../../widgets/just_for_you_sliding_cards.dart';
import '../../widgets/long_button.dart';

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
          // main page column
          child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
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
            // Second column
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      children: const [
                        MainMenuSlidingCard(
                          price: '12',
                          card_Color: blueCard,
                          productCategory: 'Franz Kafla',
                          productImageURL: 'assets/images/metamorphosis.png',
                          productName: 'The Metamorphosis',
                        ),
                        MainMenuSlidingCard(
                          price: '12',
                          card_Color: purpleCard,
                          productCategory: 'Franz Kafla',
                          productImageURL: 'assets/images/metamorphosis.png',
                          productName: 'The Metamorphosis',
                        ),
                        MainMenuSlidingCard(
                          price: '12',
                          card_Color: redCard,
                          productCategory: 'Franz Kafla',
                          productImageURL: 'assets/images/metamorphosis.png',
                          productName: 'The Metamorphosis',
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),
            // column for Deals
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // Deals
                      Text(
                        'Deals',
                        style: TextStyle(
                            fontFamily: 'Lora',
                            fontSize: 18,
                            color: blackDarkText,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: neutralBlackText,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      children: const [
                        DealCards(
                            productName: 'Bose Noise Cancell...',
                            price: '400.00',
                            starRating: '4.5',
                            dealImage: 'assets/images/deals_head_phones.png'),
                        DealCards(
                            productName: 'Bose Noise Cancell...',
                            price: '400.00',
                            starRating: '4.5',
                            dealImage: 'assets/images/deals_hobit.png'),
                        DealCards(
                            productName: 'Bose Noise Cancell...',
                            price: '400.00',
                            starRating: '4.5',
                            dealImage: 'assets/images/deals_head_phones.png'),
                        DealCards(
                            productName: 'Bose Noise Cancell...',
                            price: '400.00',
                            starRating: '4.5',
                            dealImage: 'assets/images/deals_hobit.png')
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),

            // My interest column Yellow color
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: lighYellowtColor),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(children: [
                      // my Interest

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          // Deals
                          Text(
                            'My Interests',
                            style: TextStyle(
                                fontFamily: 'Lora',
                                fontSize: 24,
                                color: blackDarkText,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: neutralBlackText,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),

                      // categories
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              InterestCategories(categoryName: 'Tech'),
                              InterestCategories(categoryName: 'Reading'),
                              InterestCategories(categoryName: 'Gaming'),
                              InterestCategories(categoryName: 'Fashion'),
                              InterestCategories(categoryName: 'Movies')
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      // column for list of products with detals
                      const MyInterestListTile(
                          price: '1000.00',
                          productBrandName: 'Apple',
                          productName: 'Macbook Pro 13"'),
                      const MyInterestListTile(
                          price: '79.99',
                          productBrandName: 'Sony',
                          productName: 'DualSense Wireless Controller'),
                      const MyInterestListTile(
                          price: '2100.45',
                          productBrandName: 'Dell',
                          productName: 'Alienware 38” Curved Monitor '),

                      const SizedBox(
                        height: 16,
                      ),
                      // View Button
                      const Longbutton(
                          text: 'View "Tech" products',
                          textColor: blackDarkText,
                          color: lightYellow,
                          screenToNavigateTo: HomeMember())
                    ]),
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),
            // Categories Grid container
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // category card
                  Row(
                    children: const [
                      CategoryCard(
                          cardColor: purpleCard,
                          categoryText: 'Shopping habits and interes'),
                      CategoryCard(
                          categoryText: 'Today\'s trending items',
                          cardColor: redCard),
                    ],
                  ),

                  Row(
                    children: const [
                      CategoryCard(
                          categoryText: 'Incoming! Flash deals',
                          cardColor: blueCard),
                      CategoryCard(
                          categoryText: 'Browse our categories',
                          cardColor: greenCard)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 32),
            //)
          ],
        ),
      )),
    );
  }
}
