import 'package:ecom/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Longbutton extends StatelessWidget {
  const Longbutton(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor,
      required this.screenToNavigateTo});
  final Color? textColor;
  final String? text;
  final Color? color;

  final Widget? screenToNavigateTo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screenToNavigateTo!,
            ));
      },
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(6.r)),
        child: Center(
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor,
                //  color: blackDarkText,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
