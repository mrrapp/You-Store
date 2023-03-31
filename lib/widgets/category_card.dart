import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/color.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categoryText, required this.cardColor});
  final String categoryText;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0.w, top: 16.w),
      child: Container(
        height: 230.h,
        // height: 163.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card text
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        categoryText,
                        style: TextStyle(
                            fontFamily: 'Lora',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
           // SizedBox(height: 70.h),
                SizedBox(height: 26.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 25.sp,
                      color: neutralBlackText,
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
