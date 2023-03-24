import 'package:flutter/material.dart';

import '../utilities/color.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categoryText, required this.cardColor});
  final String categoryText;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16),
      child: Container(
        height: 163,
        width: 163,
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card text
                Column(
                  children: [
                    Text(
                      categoryText,
                      style: const TextStyle(
                          fontFamily: 'Lora',
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 35,
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
