import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilities/color.dart';
import '../profile/profile_active_orders.dart';
import '../wishlist/wishlist_member.dart';

class SearchSreen extends StatefulWidget {
  const SearchSreen({super.key});

  @override
  State<SearchSreen> createState() => _SearchSreenState();
}

class _SearchSreenState extends State<SearchSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: const Icon(
                  Icons.home_outlined,
                  color: neutralBlackText,
                ),
              ),
              backgroundColor: veryLightGrey,
              label: ''),
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
                  Icons.search,
                  color: blackDarkText,
                ),
              ),
              label: 'Search'),
        ]),
        body: SafeArea(
          child:
              // Search bar row with text form and the Done action key

              // Text field for search
              Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: TextFormField(
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: blackDarkText,
                      fontWeight: FontWeight.w400),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 20.sp,
                        color: blackDarkText,
                      ),
                      hintText: 'Search by keyword or categories',
                      hintStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      suffix: Text(
                        'Done',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: blackDarkText),
                      )),
                ),
              ),
              Divider(
                height: 30.h,
                thickness: 1.sp,
                color: neutralBlackText,
              )
            ],
          ),
        ));
  }
}
