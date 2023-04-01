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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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

                  // Here is the product image
                  Center(
                    child: Image.asset('assets/images/game_pad.png'),
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
