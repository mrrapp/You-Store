import 'package:flutter/material.dart';

import '../utilities/color.dart';

class InterestCategories extends StatelessWidget {
  const InterestCategories({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0),
      child: Column(
        children:  [
          Text(
            categoryName,
            style:const TextStyle(
                fontFamily: 'Inter',
                color: blackDarkText,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        const  Divider(
            thickness: 14,
            color: blackDarkText,
          )
        ],
      ),
    );
  }
}
