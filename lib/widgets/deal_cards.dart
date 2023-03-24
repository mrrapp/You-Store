import 'package:flutter/material.dart';

import '../utilities/color.dart';

class DealCards extends StatelessWidget {
  const DealCards(
      {super.key,
      required this.productName,
      required this.price,
      required this.starRating,
      required this.dealImage});
  final String productName;
  final String dealImage;
  final String price;
  final String starRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 218,
        width: 163,
        decoration: BoxDecoration(
            color: lightGrey, borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          // Heart Icon
          Padding(
            padding: const EdgeInsets.only(right: 12.0, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset('assets/icons/heart.png')],
            ),
          ),
          // Image Column
          Column(
            children: [Image.asset(dealImage)],
          ),
          // column for text
          Column(
            children: [
              // name
              Text(
                productName,
                style: const TextStyle(
                    fontFamily: 'Lora',
                    color: blackDarkText,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              const SizedBox(height: 4),
              // star
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    // star icon
                    const Icon(Icons.star),
                    const SizedBox(width: 4),
                    Text(starRating),
                  ],
                ),
              ),
              const SizedBox(height: 5.5),
              //price
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text('\$$price'),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
