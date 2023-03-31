import 'package:ecom/screens/profile/profile_active_orders.dart';
import 'package:ecom/screens/wishlist/wishlist_member.dart';
import 'package:ecom/utilities/color.dart';
import 'package:ecom/widgets/category_card.dart';
import 'package:ecom/widgets/deal_cards.dart';
import 'package:ecom/widgets/my_interest_listTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/just_for_you_sliding_cards.dart';
import '../../widgets/long_button.dart';

class HomeMember extends StatefulWidget {
  const HomeMember({super.key});

  @override
  State<HomeMember> createState() => _HomeMemberState();
}

class _HomeMemberState extends State<HomeMember> {
  // Category lists and isSelected status
  final List categories = [
    ['Tech', true],
    ['Reading', false],
    ['Gaming', false],
    ['Fashion', false],
    ['Movies', false]
  ];
  // categoryTypesSelected function
  void categoryTypesSelected(int index) {
    setState(() {
      categories[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: const Icon(
                Icons.home,
                color: blackDarkText,
              ),
            ),
            backgroundColor: veryLightGrey,
           label: ''
            ),
        BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WishlistMember()));
              },
              child: const Icon(
                Icons.favorite_border,
                color: neutralBlackText,
              ),
              
            ),
            backgroundColor: neutralBlackText,
            label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileActiveOrders(),
                    ));
              },
              child: const Icon(
                Icons.person_outline,
                color: neutralBlackText,
              ),
            ),
            label: 'Profile'),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: neutralBlackText,
            ),
            label: 'Search'),
      ]),

      // Here is where the body the of screen begins
      body: SafeArea(
          // main page column is the parent column of all other column and widgets
          child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo icon and cart icon
            Padding(
              padding: EdgeInsets.only(top: 38.0.h),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.0.w),

                // this row carries the app logo and cart icon
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Here is the logo of the app, at the top left coner
                    Image.asset('assets/logo/Habitual_logo.png'),

                    //Here is the cart icon , is located at the top right coner
                    Image.asset('assets/logo/shopping-cart.png'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
             
            // Column for:  just for you text and sliding tiles rows

            Column(
              children: [
                // Just for you
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // just for you
                      Text(
                        'Just for you',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.w600,
                            color: blackDarkText),
                      ),
                      // Icons for left and right navigation
                      Row(
                        children: [
                          Image.asset('assets/icons/arrow_left.png'),
                          SizedBox(width: 38.w),
                          Image.asset('assets/icons/arrow_right.png')
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),

                //sliding tile containers
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.0.w),
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
            SizedBox(height: 32.h),
            // column for Deals and sliding cards
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Deals
                      Text(
                        'Deals',
                        style: TextStyle(
                            fontFamily: 'Lora',
                            fontSize: 18.sp,
                            color: blackDarkText,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14.sp,
                            color: neutralBlackText,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),

                // Below are all the sliding cards for the deal section on the home page
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0.w),
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
            SizedBox(height: 32.h),

            // Column Yellow color
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: lighYellowtColor),
                  child: Padding(
                    padding: EdgeInsets.all(24.0.sp),
                    child: Column(children: [
                      // my Interest

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Deal
                          Text(
                            'My Interests',
                            style: TextStyle(
                                fontFamily: 'Lora',
                                fontSize: 24.sp,
                                color: blackDarkText,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14.sp,
                                color: neutralBlackText,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(height: 16.h),

                      //   categories
                      // Padding(
                      //     padding: const EdgeInsets.only(left: 0.0),
                      //     child: ListView.builder(
                      //       itemCount: categories.length,
                      //       itemBuilder: (context, index) => InterestCategories(
                      //           categoryName: categories[index][0],
                      //           onTap: () {
                      //             categoryTypesSelected(index);
                      //           },
                      //           isSelected: categories[index][1]),
                      //     )),
                      SizedBox(
                        height: 16.h,
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

                      SizedBox(
                        height: 16.h,
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
            SizedBox(height: 32.h),
            // Categories Grid container
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // category card
                  Row(
                    children: [
                      const CategoryCard(
                          cardColor: purpleCard,
                          categoryText: 'Shopping habits and interes'),
                      SizedBox(
                        width: 16.w,
                      ),
                      const CategoryCard(
                          categoryText: 'Today\'s trending items',
                          cardColor: redCard),
                    ],
                  ),

                  Row(
                    children: [
                      const CategoryCard(
                          categoryText: 'Incoming! Flash deals',
                          cardColor: blueCard),
                      SizedBox(
                        width: 16.w,
                      ),
                      const CategoryCard(
                          categoryText: 'Browse our categories',
                          cardColor: greenCard)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 32.h),
            //)
          ],
        ),
      )),
    );
  }
}
