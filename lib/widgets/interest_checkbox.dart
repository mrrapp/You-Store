import 'package:flutter/material.dart';

import '../utilities/color.dart';

class InterestCheckbox extends StatelessWidget {
  const InterestCheckbox({super.key, required this.interest});
  final String interest;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 11.0, bottom: 11, left: 24, right: 24),
      child:
          // Interest CheckBox
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Interest name
          Text(
            interest,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: lightDarkBlue),
          ),
          // Tick
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border:
                    Border.all(color: const Color.fromRGBO(210, 211, 211, 1))),
          )
        ],
      ),
    );
  }
}
