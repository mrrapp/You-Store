import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/color.dart';

class InterestCheckBox extends StatefulWidget {
  const InterestCheckBox({super.key, required this.interest});
  final String interest;
  @override
  State<InterestCheckBox> createState() => _InterestCheckBoxState();
}

class _InterestCheckBoxState extends State<InterestCheckBox> {
  bool interestSelected = false;
  // check box was tapped
  // void checkBoxTapped(bool? value) {
  //   setState(() {
  //     interestSelected = value!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
           EdgeInsets.only(top: 11.0.h, bottom: 11.h, left: 24.w, right: 24.w),
      child:
          // Interest CheckBox
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Interest name
          Text(
            // life saver code line below
            widget.interest,
            style:  TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: lightDarkBlue),
          ),

          // functional checkbox
          Checkbox(
            value: interestSelected,
            onChanged: (bool? value) {
              setState(() {
                interestSelected = value!;
              });
            },
            checkColor: blackDarkText,
            activeColor: Colors.grey.shade300,
          )

          // Tick
          // Container(
          //   width: 24,
          //   height: 24,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(2),
          //       border:
          //           Border.all(color: const Color.fromRGBO(210, 211, 211, 1))),
          // )
        ],
      ),
    );
  }
}
