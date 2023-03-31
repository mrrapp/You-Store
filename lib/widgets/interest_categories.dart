import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/color.dart';

class InterestCategories extends StatelessWidget {
  const InterestCategories(
      {super.key, required this.categoryName,required this.onTap, required this.isSelected});
  final String categoryName;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32.0.r),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Text(
              categoryName,
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: isSelected ? blackDarkText : neutralBlackText,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          // const Divider(
          //   thickness: 14,
          //   color: blackDarkText,
          // )
        ],
      ),
    );
  }
}
