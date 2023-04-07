import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.only(right: 16.0.w),
      child: Container(
        width: 206.w,
        height: 357.h,
        decoration: BoxDecoration(
            color: card_Color, borderRadius: BorderRadius.circular(10.r)),
        // Main column for the container items
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Row for the favorite or love icon at the top right corner
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 24.0.w,top:16.h),
                    child: Image.asset('assets/icons/heart.png'),
                  )
                ],
              ),

              //product image
              SizedBox(
               // height: 43,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0.h),
                    child: Image.asset(productImageURL,fit: BoxFit.contain,),
                  ),
                ),
              ),
              // text title and price column
              Padding(
                padding:
                    EdgeInsets.only(left: 16.0.w, right: 16.w, bottom: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // product name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: blackDarkText,
                              fontFamily: 'Lora'),
                        ),
                        Text(
                          productCategory,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            color: blackMediumDarkText,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),

                    // the last column for the price of the product on the sliding card
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 16.0.h),
                          child: Text(
                            '\$$price',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Inter',
                              color: blackMediumDarkText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
