import 'package:ecom/screens/home/home_member.dart';
import 'package:ecom/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilities/color.dart';
import '../wishlist/wishlist_member.dart';

class ProfileActiveOrders extends StatefulWidget {
  const ProfileActiveOrders({super.key});

  @override
  State<ProfileActiveOrders> createState() => _ProfileActiveOrdersState();
}

class _ProfileActiveOrdersState extends State<ProfileActiveOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(16.0.sp),
              child:  InkWell(
                onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeMember()));
              },
                child:const Icon(
                  Icons.home_outlined,
                  color: neutralBlackText,
                ),
              ),
            ),
            backgroundColor: veryLightGrey,
            label: 'Home'),
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
            label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.person,
                color: blackDarkText,
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
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: ListView(
          children: [
            // Wish list text title and cart Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Title: User profile and the cart icon
                Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp),
                ),
                // Cart Icon
                Image.asset('assets/icons/cart.png'),
              ],
            ),

            SizedBox(height: 24.h),

            // Column for user name and bio with the prodfile picture

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // User name
                    Text(
                      'Rapp Jeremiah',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lora'),
                    ),
                    // User
                    Text(
                      """Amet minim mollit non deserunt
                      """,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter'),
                    ),
                    //Edit button

                    MaterialButton(
                      clipBehavior: Clip.none,
                      elevation: 0.sp,
                      onPressed: () {},
                      shape: Border.all(color: blackDarkText, width: 1.sp),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0.h, vertical: 9.h),
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter'),
                        ),
                      ),
                    )
                  ],
                ),

                // clipped profile picture
                Container(
                  height: 73.h,
                  width: 73.h,
                  decoration: BoxDecoration(
                      color: veryLightGrey,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ],
            ),
            SizedBox(
              height: 24.sp,
            ),

            SizedBox(
              child: Column(children: [
                // Order title and view all option
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title: User profile and the cart icon
                    Text(
                      'Orders',
                      style: TextStyle(
                          fontFamily: 'Lora',
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp),
                    ),
                    // Cart Icon
                    Text(
                      'view all',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: neutralBlackText,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                // categories with 2 columns in a row

                Row(
                  children: [
                    // first coulmn
                    Column(
                      children: [
                        CategoryCard(
                            categoryText: 'Gaming', cardColor: greenCard),
                        SizedBox(
                          height: 16.sp,
                        ),
                        CategoryCard(
                            categoryText: 'Fashion', cardColor: purpleCard)
                      ],
                    ),
                    SizedBox(
                      width: 16.sp,
                    ),
                    Column(
                      children: [
                        CategoryCard(categoryText: 'Music', cardColor: redCard),
                        SizedBox(
                          height: 16.sp,
                        ),
                        CategoryCard(
                            categoryText: 'Reading', cardColor: greenCard)
                      ],
                    )
                  ],
                )
              ]),
            )
          ],
        ),
      )),
    );
  }
}
