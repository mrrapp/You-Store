import 'package:ecom/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/color.dart';

class DealCards extends StatelessWidget {
  const DealCards(
      {super.key,
      required this.productName,
      required this.price,
      required this.starRating,
      required this.dealImage});
  final String productName;
  final String dealImage;
  final String price;
  final String starRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0.w),
      // main contain for cards
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductPage(),
            )),
        child: Container(
          height: 218.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: lightGrey, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Heart Icon
                Padding(
                  padding: EdgeInsets.only(right: 12.0.w, top: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Image.asset('assets/icons/heart.png')],
                  ),
                ),
                // Here is the product Image Column, for the deals segment on the homepage
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(dealImage)],
                ),
                // column for all card text and star rating
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w, right: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Here goes the card product name
                      Text(
                        productName,
                        style: TextStyle(
                            fontFamily: 'Lora',
                            color: blackDarkText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp),
                      ),
                      SizedBox(height: 4.h),
                      // Row carrying the star rating icon
                      Row(
                        children: [
                          // star icon
                          const Icon(Icons.star),
                          SizedBox(width: 4.w),
                          Text(
                            starRating,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),

                      SizedBox(height: 5.5.h),
                      // Here goes the card product price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 16.0.h),
                            child: Text(
                              '\$$price',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
