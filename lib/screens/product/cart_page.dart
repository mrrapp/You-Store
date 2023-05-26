import 'package:ecom/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Container(
              height: 400.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(15.r)),
              child: Column(
                children: [
                  // Row for the cancel and  Cart title text
                  Padding(
                    padding: EdgeInsets.only(
                        left: 24.w, right: 24.w, top: 16.h, bottom: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // cancel icon
                        const Icon(
                          Icons.cancel_outlined,
                          color: blackDarkText,
                        ),

                        Text(
                          'Cart',
                          style: TextStyle(
                            fontFamily: 'Lora',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  //  List of cart items
                  Expanded(
                      child: ListView(
                    children: [
                      //rows for cart

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // product image
                          SizedBox(
                              width: 80.w,
                              height: 80.h,
                              child:
                                  Image.asset('assets/images/book_card.png')),

                          // column with product title and quantiy selection
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // product tilte
                              SizedBox(
                                width: 174.w,
                                child: Text(
                                  'The Hobbit',
                                  style: TextStyle(
                                      fontFamily: 'Lora',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),

                              //quantity selector
                              Container(
                                height: 36.h,
                                width: 134.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: chipGreyButton),
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // minus values
                                      Expanded(
                                        child: SizedBox(
                                            width: 44.w,
                                            child: Icon(Icons.plus_one)),
                                      ),
                                      //  Image.asset(
                                      //     'assets/icons/minus.png')),

                                      const VerticalDivider(
                                        color: chipGreyButton,
                                      ),

                                      // value display
                                      SizedBox(
                                          width: 44.w,
                                          child: const Expanded(
                                              child: Icon(Icons.plus_one))),
                                      // Text(
                                      //   '1',
                                      //   style: TextStyle(
                                      //       fontFamily: 'Inter',
                                      //       fontSize: 14.sp,
                                      //       fontWeight: FontWeight.w600),
                                      // ),

                                      const VerticalDivider(
                                        color: chipGreyButton,
                                      ),

                                      // addition values
                                      SizedBox(
                                          width: 44.w,
                                          child: const Icon(Icons.plus_one)),
                                      //  Image.asset(
                                      //     'assets/icons/plus.png'))
                                    ]),
                              )
                            ],
                          ),

                          // product price
                          Text(
                            '\$87.21',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: blackDarkText,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
