import 'package:ecom/utilities/color.dart';
import 'package:flutter/material.dart';

class Longbutton extends StatelessWidget {
  const Longbutton(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor,
      required this.screenToNavigateTo});
  final Color? textColor;
  final String? text;
  final Color? color;

  final Widget? screenToNavigateTo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screenToNavigateTo!,
            ));
      },
      child: Container(
        height: 48,
        width: double.infinity,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor,
                //  color: blackDarkText,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
