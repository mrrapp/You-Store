import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LongChipButton extends StatelessWidget {
  const LongChipButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color,
      this.pageToNavigateTo});
  final String? text;
  final Color? color;
  final Color? textColor;

  final Widget? pageToNavigateTo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.0.h, bottom: 15.h),
      child: GestureDetector(
        child: Container(
          height: 48.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r), color: color),
          child: Center(
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: textColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
