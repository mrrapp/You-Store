import 'package:ecom/screens/home/home_member.dart';
import 'package:ecom/screens/profile/profile_active_orders.dart';
import 'package:ecom/utilities/color.dart';
import 'package:ecom/widgets/just_for_you_sliding_cards.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:ecom/widgets/wishlish_tile.dart';
import 'package:ecom/widgets/work_items_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../search/search.dart';

class WishlistMember extends StatefulWidget {
  const WishlistMember({super.key});

  @override
  State<WishlistMember> createState() => _WishlistMemberState();
}

class _WishlistMemberState extends State<WishlistMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(16.0.sp),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeMember()));
              },
              child: const Icon(
                Icons.home_outlined,
                color: neutralBlackText,
              ),
            ),
          ),
          backgroundColor: veryLightGrey,
          label: 'Home',
        ),
         BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileActiveOrders(),
                    ));
              },
              child:const Icon(
                Icons.favorite,
                color: blackDarkText,
              ),
            ),
            label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileActiveOrders()));
              },
              child: const Icon(
                Icons.person_outline,
                color: neutralBlackText,
              ),
            ),
            label: 'Profile'),
        BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchSreen(),
                    ));
              },
              child: const Icon(
                Icons.search_outlined,
                color: neutralBlackText,
              ),
            ),
            label: 'Search'),
      ]),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Wish list text title and cart Icon
          Padding(
            padding: EdgeInsets.only(left: 24.0.w, right: 24.w, top: 38.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Title: Wishlist
                Text(
                  'Wishlist',
                  style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp),
                ),
                // Cart Icon
                Image.asset('assets/icons/cart.png'),
              ],
            ),
          ),

          SizedBox(height: 32.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
                //  height: 348.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.sp, color: veryLightGrey),
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Column(
                  children: [
                    // Text: Personal
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0.sp),
                          child: Text(
                            'Personal',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0.sp),
                          child:
                              Image.asset('assets/icons/more-horizontal.png'),
                        )
                      ],
                    ),
                    // Horizontal Divider
                    Divider(
                      height: 4.h,
                      color: veryLightGrey,
                    ),

                    // Add to cart tile
                    const WishlistTile(
                        price: '40.2',
                        productImageURL: 'assets/images/small_music.png',
                        productName: 'good kid, m.A.A.d city'),
                    Divider(
                      height: 4.h,
                      color: veryLightGrey,
                    ),
                    const WishlistTile(
                        price: '40.2',
                        productImageURL: 'assets/images/small_hobit.png',
                        productName: 'The Hobit'),
                    Divider(
                      height: 4.h,
                      color: veryLightGrey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.h, bottom: 8.h),
                      child: Text(
                        'Show 24 more items',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: blackDarkText,
                            fontSize: 14.sp,
                            fontFamily: 'Inter'),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 32.h,
          ),

          const WorkItemsContainer(),
          SizedBox(height: 32.h),

          // Button to create a wishlist
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: MaterialButton(
                onPressed: () {},
                elevation: 0,
                shape: Border.all(color: neutralBlackText),
                height: 48.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Create a wishlist',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: blackDarkText,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
          ),
          SizedBox(height: 32.h),

          // column with trending products sliding
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Deals
                    Text(
                      'Trending',
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      MainMenuSlidingCard(
                          productName: 'Chuk 70 Hi Sneakers',
                          price: '70.99',
                          card_Color: blueCard,
                          productImageURL: 'assets/images/shoe.png',
                          productCategory: 'Converse'),
                      MainMenuSlidingCard(
                          productName: 'Chuk 70 Hi Sneakers',
                          price: '70.99',
                          card_Color: redCard,
                          productImageURL: 'assets/images/shoe.png',
                          productCategory: 'Converse'),
                      MainMenuSlidingCard(
                          productName: 'Chuk 70 Hi Sneakers',
                          price: '70.99',
                          card_Color: purpleCard,
                          productImageURL: 'assets/images/shoe.png',
                          productCategory: 'Converse'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
