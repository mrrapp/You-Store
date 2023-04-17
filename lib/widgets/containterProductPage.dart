import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/color.dart';

class ContainerInProductPage extends StatefulWidget {
  const ContainerInProductPage(
      {super.key,
      required this.price,
      required this.productColor,
      required this.containerColor,
      required this.color});
  final String price;
  final String productColor;
  final Color color;
  final Color containerColor;
  @override
  State<ContainerInProductPage> createState() => _ContainerInProductPageState();
}

class _ContainerInProductPageState extends State<ContainerInProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 109.h,
      width: 163.w,
      decoration: BoxDecoration(
          border: Border.all(color: widget.containerColor, width: 1.5.sp),
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //Color title
        Container(
            width: double.infinity,
            height: 42.0.h,
            // padding: EdgeInsets.all(12.sp),
            decoration: BoxDecoration(
              color: widget.color,
              //color: Color.fromRGBO(255, 248, 239, 1)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.productColor,
                    //  textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )),
        const Divider(),

        // Price and stock availability

        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 12.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //product price
              Text(
                '\$' + widget.price,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),

              Text(
                'In stock',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(30, 156, 64, 1),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
