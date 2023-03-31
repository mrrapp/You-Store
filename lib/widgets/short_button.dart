import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortButton extends StatelessWidget {
  const ShortButton(
      {super.key,
      required this.text,
      required this.color,
      required this.pageToNavigateTo,
      this.buttonIcon});
  final String? text;
  final Color? color;

  final Widget? pageToNavigateTo;
  final IconData? buttonIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pageToNavigateTo!,
          )),
      child: Container(
        height: 48.h,
        width: 163.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),
            ),
            Icon(
              buttonIcon,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
