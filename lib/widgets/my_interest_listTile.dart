import 'package:ecom/screens/home/home_member.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/color.dart';

class MyInterestListTile extends StatelessWidget {
  const MyInterestListTile(
      {super.key,
      required this.price,
      required this.productBrandName,
      required this.productName});
  final String price;
  final String productName;
  final String productBrandName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.0.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image of product

                Image.asset('assets/images/deals_hobit.png'),

                // column of product name and brand
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product name
                    Text(
                      productName,
                      style: TextStyle(
                          fontFamily: 'Lora',
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp),
                    ),
                    Text(
                      productBrandName,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: neutralBlackText,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    SizedBox(height: 4.h),
                    //Column of price
                    Column(
                      children: [
                        Text(
                          '\$$price',
                          style: TextStyle(
                              fontFamily: 'Lora',
                              color: blackDarkText,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
