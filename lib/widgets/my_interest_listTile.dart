import 'package:ecom/screens/home/home_member.dart';
import 'package:ecom/widgets/long_button.dart';
import 'package:flutter/material.dart';

import '../utilities/color.dart';

class MyInterestListTile extends StatelessWidget {
  const MyInterestListTile(
      {super.key,
      required this.price,
      required this.productBrandName,
      required this.productName});
  final String price;
  final String productName;
  final String productBrandName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                // image of product

                Image.asset('assets/images/deals_hobit.png'),

                // column of product name and brand
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product name
                    Text(
                      productName,
                      style: const TextStyle(
                          fontFamily: 'Lora',
                          color: blackDarkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    Text(
                      productBrandName,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          color: neutralBlackText,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    const SizedBox(height: 4),
                    //Column of price
                    Column(
                      children: [
                        Text(
                          '\$$price',
                          style: const TextStyle(
                              fontFamily: 'Lora',
                              color: blackDarkText,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
