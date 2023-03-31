import 'package:ecom/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterestCard extends StatelessWidget {
  const InterestCard(
      {super.key,
      required this.productTitle,
      required this.color,
      this.cardPicture});
  final Color color;
  final String? cardPicture;
  final String productTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Container(
        width: 208.w,
        height: 300.h,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Trying out a new column to see if it gives a good spacing for the image card
            // Here is the column for the product image in the card
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Padding(
              padding: EdgeInsets.only(top: 16.0.h, bottom: 16.0.h),

              // Product image
              child: Image.asset(cardPicture!),
            )],)
            
           ,
            Padding(
              padding: EdgeInsets.only(left: 16.w,top: 32.h, right: 16.w, bottom: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Card product tilte
                  Text(
                    productTitle,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: lightDarkBlue),
                  ),
             

                  // Custom made add button
                  Container(
                    height: 36.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: lightDarkBlue, width: 1.sp),
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Center(
                      child: Text(
                        'Add',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: lightDarkBlue),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
