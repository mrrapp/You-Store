import 'package:flutter/material.dart';

class LongChipButton extends StatelessWidget {
  const LongChipButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color,
      this.pageToNavigateTo});
  final String? text;
  final Color? color;
  final Color? textColor;

  final Widget? pageToNavigateTo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 15),
      child: GestureDetector(
        child: Container(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: color),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15),
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
