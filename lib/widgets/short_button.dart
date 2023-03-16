import 'package:flutter/material.dart';

class ShortButton extends StatelessWidget {
  const ShortButton(
      {super.key,
      required this.text,
      required this.color,
      
      required this.pageToNavigateTo,
      this.buttonIcon});
  final String? text;
  final Color? color;
  
  final Widget? pageToNavigateTo;
  final IconData? buttonIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pageToNavigateTo!,
          )),
      child: Container(
        height: 48,
        width: 163,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
            padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
            child: Row(
              //  crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Upload my photo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                Icon(
                  buttonIcon,
                  color: Colors.white,
                ),
              ],
            )),
      ),
    );
  }
}
