import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/color.dart';
import 'wishlish_tile.dart';

class WorkItemsContainer extends StatelessWidget {
  const WorkItemsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        //  height: 195.h,
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
                    child: Image.asset('assets/icons/more-horizontal.png'),
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

              // Divider(
              //   height: 4.h,
              //   color: neutralBlackText,
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 8.0.h, bottom: 8.h),
              //   child: Text(
              //     'Show 24 more items',
              //     style: TextStyle(
              //         fontWeight: FontWeight.w500,
              //         color: blackDarkText,
              //         fontSize: 14.sp,
              //         fontFamily: 'Inter'),
              //   ),
              // )
            ],
          )),
    );
  }
}
