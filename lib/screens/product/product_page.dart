import 'package:ecom/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          //Blue container with the title bar having the back icon button and the cart icon, and also the product image
          Container(
            width: double.infinity,
            height: 395.h,
            decoration: const BoxDecoration(color: blueCard),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Here is the row for the ARROW BACK Icon and the CART icon
                  Padding(
                    padding:
                        EdgeInsets.only(left: 24.0.w, right: 24.w, top: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // first is the arrow back Icon
                        Image.asset(
                          'assets/icons/arrow_left.png',
                          color: blackDarkText,
                        ),
                        Image.asset(
                          'assets/icons/cart.png',
                          color: blackDarkText,
                          height: 20.h,
                          width: 20.w,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.0.h,
                  ),

                  // Here is the product image
                  Expanded(
                    child: Center(
                      child: Container(
                        // padding: EdgeInsets.only(bottom: 56.h),
                        constraints: BoxConstraints.expand(height: 238.h),
                        child: Image.asset(
                          'assets/images/game_pad.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )
                ]),
          ),

          // Column with Texts: Product name, brand and stars reviews
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dual Sense Wireless Controller',
                  style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                      color: blackDarkText),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.h),
                  child: Text(
                    'Sony',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: neutralBlackText),
                  ),
                ),

                // Stars Rating of product
                Row(
                  children: [
                    // star icon
                    const Icon(Icons.star),
                    SizedBox(
                      width: 4.w,
                    ),

                    Text(
                      '4.6',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 10.sp,
                          color: blackDarkText,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      '12 Reviews',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 10.sp,
                          color: neutralBlackText,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            // Options column for the product selection
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Options',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: blackDarkText),
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 109.h,
                      width: 163.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: lightYellow),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Column(children: [
                        //Color title
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(12.sp),
                            decoration:
                                 BoxDecoration(color: lightYellowColor),
                            child: Text(
                              'Black',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                           Divider(thickness: 1.sp,),

                        // Price and stock availability
                        Column(children: [
                          //product price
                          Text('\$200.0',style: TextStyle(fontFamily: 'Inter',fontSize: 16.sp,),)
                        ],)
                      ]),
                    ),
                    Container(
                      height: 109.h,
                      width: 163.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: veryLightGrey),
                          borderRadius: BorderRadius.circular(10.r)),
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
