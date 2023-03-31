import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/color.dart';

class WishlistTile extends StatelessWidget {
  const WishlistTile(
      {super.key,
      required this.price,
      required this.productImageURL,
      required this.productName});
  final String price;
  final String productName;
  final String productImageURL;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Picture of product in cart
            Image.asset(productImageURL),
            SizedBox(
              width: 16.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row with product name and favorite icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: TextStyle(
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp),
                    ),
                    const Icon(
                      Icons.favorite,
                      color: redCard,
                    )
                  ],
                ),
                // product price
                Text(
                  '\$$price',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: blackDarkText,
                      fontSize: 14.sp),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: lightYellow,
                  minWidth: 214.w,
                  elevation: 0,
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                )
              ],
            )
          ],
        ),
      )
    ]);
  }
}
